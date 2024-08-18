# User
## DFD
```mermaid
flowchart

%% DB
DB1[( UserDB
    + loginId
    - userNo
    - passwordHash)]

BKT3[/PostUserLog
    + ip/
    - loginId
    - returnCode
    - accessedAt/]

BKT4[/AuthLog
    + loginId
    - ip
    - returnCode
    - accessedAt/]

BKT1[/ UserNoIndex
    + userNo
    - loginId/]

DB2[( ResetPasswordApplicationDB
    + resetPasswordApplicationId
    - loginId
    - createdAt)]

DB3[( EmailDB
    + userNo
    - email)]

BKT2[/ EmailIndex
    + email
    - loginId/]


%% API
API1([ PostUser
    req: loginId, password])

API2([PutPassword
    req: resetPasswordId, newPassword])

%% private API
pAPI1(auth
    req: loginId, passwordChallenge
    res: userNo)

pAPI2(putResetPasswordApplication
    req: email
    res: resetPasswordApplicationId)

pAPI3(vacuum)

pAPI4(putEmail
    req: userNo, email)

pAPI5(getEmail
    req: userNo
    res: email)

pAPI6(deleteEmail
    req: userNo)

%% Arrow

pAPI3 --> DB2
API1 --> DB1
API1 <--> BKT3
API2 --> DB1
pAPI2 --> DB2
BKT2 --> pAPI2

DB1 --> pAPI1
BKT4 <--> pAPI1
DB2 <--> API2

DB1 -.- BKT1
DB1 -.- BKT3
DB1 -.- BKT4
DB3 -.- BKT2

BKT1 --> pAPI4
pAPI4 --> DB3
DB3 --> pAPI5
pAPI6 --> DB3

```

## CRUD

### UserDB
| name        | C | R | U | D |
| ----        | - | - | - | - |
| PostUser    | o | . | . | . |
| auth        | . | o | . | . |
| PutPassword | . | . | o | . |

### UserDB.UserNoIndex
| name        | C | R | U | D |
| ----        | - | - | - | - |
| PostUser    | o | . | . | . |
| putEmail    | . | o | . | . |

### UserDB.PostUserLog
| name        | C | R | U | D |
| ----        | - | - | - | - |
| PostUser    | o | o | o | . |

### UserDB.AuthLog
| name        | C | R | U | D |
| ----        | - | - | - | - |
| auth        | o | o | o | . |

### EmailDB
| name        | C | R | U | D |
| ----        | - | - | - | - |
| putEmail    | o | . | o | . |
| getEmail    | . | o | . | . |
| deleteEmail | . | . | . | o |

### EmailDB.EmailIndex
| name                        | C | R | U | D |
| ----                        | - | - | - | - |
| putEmail                    | o | . | . | . |
| putResetPasswordApplication | . | o | . | . |
| deleteEmail                 | . | . | . | o |

### ResetPasswordApplicationDB
| name                        | C | R | U | D |
| ----                        | - | - | - | - |
| putResetPasswordApplication | o | . | o | . |
| PutPassword                 | . | o | . | o |
| vacuum                      | . | . | . | o |
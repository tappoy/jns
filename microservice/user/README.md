# User
## DFD
```mermaid
flowchart

%% DB
DB1[( UserDB
    + loginId
    - userNo
    - passwordHash)]

IDX1[/ Index
    + userNo
    - loginId/]

DB2[( ResetPasswordRequestDB
    + resetPasswordRequestId
    - loginId
    - createdAt)]

DB3[( EmailDB
    + userNo
    - email)]

IDX2[/ Index
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

pAPI2(putResetPasswordRequest
    req: email
    res: resetPasswordRequestId)

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
API2 --> DB1
pAPI2 --> DB2
IDX2 --> pAPI2

DB1 --> pAPI1
DB2 <--> API2

DB1 -.- IDX1
DB3 -.- IDX2

IDX1 --> pAPI4
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

### UserDB Index
| name        | C | R | U | D |
| ----        | - | - | - | - |
| PostUser    | o | . | . | . |
| putEmail    | . | o | . | . |

### EmailDB
| name        | C | R | U | D |
| ----        | - | - | - | - |
| putEmail    | o | . | o | . |
| getEmail    | . | o | . | . |
| deleteEmail | . | . | . | o |

### EmailDB Index
| name                    | C | R | U | D |
| ----                    | - | - | - | - |
| putEmail                | o | . | . | . |
| putResetPasswordRequest | . | o | . | . |
| deleteEmail             | . | . | . | o |

### ResetPasswordRequestDB
| name                    | C | R | U | D |
| ----                    | - | - | - | - |
| putResetPasswordRequest | o | . | o | . |
| PutPassword             | . | o | . | o |
| vacuum                  | . | . | . | o |
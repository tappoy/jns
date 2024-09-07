# ChannelRole
## Role Level

### Action
1. Put/Delete Owner
2. Put/Delete Admin
3. Put/Delete Member
4. Invite Member
5. Write Channel
6. Read Channel

7. Set inviteByMember
8. Set guestWrite
9. Set guestRead

### Role & Policy
| Lv.  | Role    | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 |
| ---- | ------- | - | - | - | - | - | - | - | - | - |
| Lv0. | Root    | o | o | o | o | o | o | o | o | o |
| Lv1. | Owner   | - | o | o | o | o | o | o | o | o |
| Lv2. | Admin   | - | - | o | o | o | o | o | o | o |
| Lv3. | Member  | - | - | - | - | o | o | - | - | - |
| Lv4. | Guest   | - | - | - | - | - | - | - | - | - |

### 

## DFD
```mermaid
flowchart
%% DB

DB1[(LevelDB
	+ userNo
    - level)]

DB2[(SettingsDB
    - published
    - guestRead
    - guestWrite
	- inviteByMember
    )]


%% API
API01([Put
	req: sessionId, userNo, level])

API02([Get
	req: sessionId
    res: level])

xAPI1{{Session.GetSession
    req: sessionId
    res: userNo}}

%% Layout
xAPI1 --> API01 <--> DB1
xAPI1 --> API02
DB1 --> API02
DB2 --> API02

```
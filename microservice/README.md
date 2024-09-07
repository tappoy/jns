# Microservice
## Boot Sequence
- Lv0. Monitor
- Lv1. [User](./user/README.md)
- Lv2. [Session](./session/README.md)
- Lv3. [Email](./email/README.md)
- Lv4. Channel([File](./file/README.md), [Role](./role/README.md), [Profile](./profile/README.md), [Tweet](./tweet/README.md), [Mute](./tweet/mute.md), [Like](./tweet/like.md), [Note](./note/README.md))

## Dependencies
```mermaid
flowchart

User
Email --> User
Email --> AWS.SES{{AWS.SES}}
Email --> Session

Session --> User
ChannelAlias[Channel] --> Session

subgraph Channel
    Note --> File
    Note --> Tweet
    Tweet --> File
    Profile --> File
    Role
end

Channel -.- ChannelAlias
ChannelAlias --> Email

ChannelIndex --> Session
```
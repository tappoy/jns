# Microservice
## Boot Sequence
- Lv0. Monitor
- Lv1. [User](./user/README.md), [Image](./file/README.md)
- Lv2. [Session](./session/README.md)
- Lv3. [Email](./email/README.md)
- Lv4. Channel([File](./file/README.md), [Profile](./profile/README.md), [Tweet](./tweet/README.md), [Mute](./mute/README.md), [Like](./like/README.md), [Note](./note/README.md))

## Dependencies
### Lv0 & Lv9
```mermaid
flowchart
HI[Proxy]
MID[Lv1-4]

Monitor -.-> HI
Monitor -.-> MID
HI -.-> MID
```

### Lv1-4
```mermaid
flowchart

User
Email --> User
Email --> AWS.SES{{AWS.SES}}
Email --> Session

Session --> User
ChannelAlias[Channel] --> Session

subgraph Channel
    Admin[Admin/AuthZ]
    Note --> Tweet
    subgraph NoteGroup[Note]
        Note --> Note-Image[File/Note]
    end
    subgraph ProfileGroup[Profile]
        Profile --> Profile-Image[File/Profile]
    end
    subgraph TweetGroup[Tweet]
        Tweet --> Tweet-Image[File/Tweet]
        Mute
        Like
    end
    NoteGroup --> Admin
    ProfileGroup --> Admin
    TweetGroup --> Admin
end


Channel -.- ChannelAlias
ChannelAlias --> Email

ChannelIndex --> Session

```
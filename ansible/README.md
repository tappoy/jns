# Ansible

This setting is for the development environment. Do not save the one for the production environment.

## How to install ansible for Mac. (control node)
```sh
brew install ansible
brew install hudochenkov/sshpass/sshpass
```

## How to setup UTM/ArchLinux. (target node)

### 0. UTM & ArchLinux (for apple silicon)
Download
1. Download [UTM](https://mac.getutm.app/)
2. Download [ArchLinux aarch64 iso](https://release.archboot.net/aarch64/latest/iso/) (Get largest one)

and so on...

### 1. Permit ssh root login with password
```sh
sed -i 's/#PermitRootLogin.*$/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd
```

### 2. Set timezone
ex) `Asia/Tokyo`
```sh
timedatectl set-timezone Asia/Tokyo
timedatectl set-ntp true
```

### 3. Fix IP Address
Enable & start services.
```sh
systemctl enable systemd-networkd
systemctl enable systemd-resolved
systemctl start systemd-networkd
systemctl start systemd-resolved
```

Edit config file
```
NETWORK_ADAPTER=$(ip addr | grep '^2' | awk -F: '{print $2}' | tr -d ' ')
vi /etc/systemd/network/$NETWORK_ADAPTER-ethernet.network
```

```/etc/systemd/network/$NETWORK_ADAPTER-ethernet.network
[Match]
Name=enp0s1

[Address]
Address=192.168.1.100/24

[Route]
Gateway=192.168.1.1

[Network]
DNS=192.168.1.1
```
- [ ] check UTM Network Mode is `Bridge`
- [ ] check `Name` is `NETWORK_ADAPTER`. ex) `enp0s1`
- [ ] check `Address` is `192.168.1.x/24`. ex) `192.168.1.100/24`
- [ ] check `Gateway` is `192.168.1.1`.
- [ ] check `Network` is `192.168.1.1`.

Restart service.
```sh
systemctl restart systemd-networkd
```


### 4. Install python
```sh
pacman -S python
```
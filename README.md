# slackware-caddy-package
Scripts and info for creatinga Caddy package for Slackware.
## Usage
### Clone this repo
```bash
git https://github.com/slarm/slackware-caddy-package
```
### Download or compile caddy
[Find static binaries here](https://caddyserver.com/download) or [build from source](https://caddyserver.com/docs/build).
### Create the package
The directory structure should look like this
```bash
.
|-- etc
|   |-- caddy
|   |   `-- Caddyfile
|   |-- logrotate.d
|   |   `-- caddy.new
|   `-- rc.d
|       `-- rc.caddy
|-- install
|   |-- doinst.sh
|   `-- slack-desc
`-- usr
    `-- bin
        `-- caddy
```
Create the package using makepkg:
```bash
makepkg -l y -c n /tmp/caddy-2.4.6-amd64-1.txz
```
Install the package:
```bash
installpkg /tmp/caddy-2.4.6-amd64-1.txz
```

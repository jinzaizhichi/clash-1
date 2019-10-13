<h2 align="center">
  <img src="https://github.com/Dreamacro/clash/raw/master/docs/logo.png" alt="Clash" width="200">
  <br>Clash for OpenWrt <br>

</h2>

  <p align="center">
	A rule based custom proxy for Openwrt based on <a href="https://github.com/Dreamacro/clash" target="_blank">Clash</a>.
  </p>
  <p align="center">
	<a target="_blank" href="https://github.com/frainzy1477/clash/releases/tag/v0.16.0">
    <img src="https://img.shields.io/badge/Clash-v0.16.0-orange.svg">
  </a>
  
  </p>
  
## Usage

- Download and install clash ipk for openwrt [Download Clash ipk](https://github.com/frainzy1477/clash/releases/tag/v0.16.0) .

- cd /tmp

- opkg install clash_0.16.0_x86_64.ipk

- Also Download and install luci for clash ipk  [Download Luci for Clash ipk](https://github.com/frainzy1477/luci-app-clash/releases/tag/v1.2.2)

## Features

- HTTP/HTTPS and SOCKS protocol
- Surge like configuration
- GeoIP rule support
- Support Vmess/Shadowsocks/Socks5
- Support for Netfilter TCP redirect
- Support Shadowsocks-V2ray-plugin
- Support Shadowsocks-Obfs-plugin
- Support Custom Rule
- Support fake-ip
- logs and traffic API support websocket
- support custom hosts (NOTE: if a host pointed to a local IP but pass through a proxy by rule, it won't use DIRECT)
- support customizing bind-address when allow-lan is true (#255)
- trace adapters when dialing (#170)
- allow arbitrary order in proxy group (#89)
- add read clash version API
- add dns fallback filters (#105)
- v2ray-plugin support disable mux
- proxy group use correctly last speed test record
- experimental support snell
- fakeip small-probability missing record

## License

Clash for OpenWrt is released under the MIT License - see detailed [LICENSE](https://github.com/frainzy1477/clash/blob/rm/LICENSE) .


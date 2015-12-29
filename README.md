## Cluster of Vagrant boxes for Tor + Privoxy + Arm

This will spin up a cluster of vagrant boxes with Tor + Privoxy + Arm (max up to 9 nodes).

Use this at your own risk.

## Install

```bash
vagrant up
```

## Verify

```bash
vagrant@tor:~$ netstat -nltp
(No info could be read for "-p": geteuid()=1000 but you should be root.)
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:111             0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:8118            0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:9050            0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:9051            0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:37128           0.0.0.0:*               LISTEN      -
tcp6       0      0 :::111                  :::*                    LISTEN      -
tcp6       0      0 :::22                   :::*                    LISTEN      -
tcp6       0      0 :::49719                :::*                    LISTEN      -
```

## IP & Ports

```
172.16.200.201, 172.16.200.202, ..., 172.16.209
```

```
- tcp/9050 : Tor socks5
- tcp/9051 : control Tor
- tcp/8118 : Privoxy

```


## Notes

This also install the following:

- git
- python-pip

This also installs the following python packages:

- [lxml](http://lxml.de/)
- [BeautifulSoup4](http://www.crummy.com/software/BeautifulSoup/)
- [PyTorCtl](https://github.com/aaronsw/pytorctl)
- [requests](http://docs.python-requests.org/en/latest/)
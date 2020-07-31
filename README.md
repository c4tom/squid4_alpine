# squid4_alpine

Alpine 3.12

Squid Cache: Version 4.11
Service Name: squid

This binary uses OpenSSL 1.1.1g  21 Apr 2020. For legal restrictions on distribution see https://www.openssl.org/source/license.html

configure options:  '--build=x86_64-alpine-linux-musl' '--host=x86_64-alpine-linux-musl' '--prefix=/usr' '--datadir=/usr/share/squid' '--sysconfdir=/etc/squid' '--libexecdir=/usr/lib/squid' '--localstatedir=/var' '--with-logdir=/var/log/squid' '--disable-strict-error-checking' '--disable-arch-native' '--enable-removal-policies=lru,heap' '--enable-auth-digest' '--enable-auth-basic=getpwnam,NCSA,SMB,SMB_LM,RADIUS' '--enable-epoll' '--enable-external-acl-helpers=file_userip,unix_group,wbinfo_group,session' '--enable-auth-ntlm=fake,SMB_LM' '--enable-auth-negotiate=kerberos,wrapper' '--disable-mit' '--enable-heimdal' '--enable-delay-pools' '--enable-openssl' '--enable-ssl-crtd' '--enable-linux-netfilter' '--enable-ident-lookups' '--enable-useragent-log' '--enable-cache-digests' '--enable-referer-log' '--enable-async-io' '--enable-truncate' '--enable-arp-acl' '--enable-htcp' '--enable-carp' '--enable-poll' '--enable-follow-x-forwarded-for' '--with-large-files' '--with-default-user=squid' '--with-openssl' 'build_alias=x86_64-alpine-linux-musl' 'host_alias=x86_64-alpine-linux-musl' 'CC=gcc' 'CFLAGS=-Os -fomit-frame-pointer' 'LDFLAGS=-Wl,--as-needed' 'CPPFLAGS=-Os -fomit-frame-pointer' 'CXX=g++' 'CXXFLAGS=-Os -fomit-frame-pointer'



## How to run

```sh

docker run -e SQUID_USERNAME=foo -e SQUID_PASSWORD=bar -p 3128:3128 cahato/squid4_alpine:3.11_3.12
```

## Environment variables


* SQUID_USERNAME
* SQUID_PASSWORD

Ports
-----

* 3128

Volumes
-------

- `/var/log/squid`
- `/etc/squid`




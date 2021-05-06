# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module

EGO_PN="github.com/bettercap/bettercap"

# use dev-go/get-ego-vendor to generate EGO_SUM
EGO_SUM=(
        "github.com/BurntSushi/toml v0.3.1"
        "github.com/BurntSushi/toml v0.3.1/go.mod"
        "github.com/acarl005/stripansi v0.0.0-20180116102854-5a71ef0e047d"
        "github.com/acarl005/stripansi v0.0.0-20180116102854-5a71ef0e047d/go.mod"
        "github.com/adrianmo/go-nmea v1.1.0"
        "github.com/adrianmo/go-nmea v1.1.0/go.mod"
        "github.com/adrianmo/go-nmea v1.3.0"
        "github.com/adrianmo/go-nmea v1.3.0/go.mod"
        "github.com/antchfx/jsonquery v0.0.0-20180821084212-a2896be8c82b"
        "github.com/antchfx/jsonquery v0.0.0-20180821084212-a2896be8c82b/go.mod"
        "github.com/antchfx/jsonquery v1.0.0"
        "github.com/antchfx/jsonquery v1.0.0/go.mod"
        "github.com/antchfx/jsonquery v1.1.4"
        "github.com/antchfx/jsonquery v1.1.4/go.mod"
        "github.com/antchfx/xpath v1.0.0"
        "github.com/antchfx/xpath v1.0.0/go.mod"
        "github.com/antchfx/xpath v1.1.0"
        "github.com/antchfx/xpath v1.1.0/go.mod"
        "github.com/antchfx/xpath v1.1.7/go.mod"
        "github.com/antchfx/xpath v1.1.10"
        "github.com/antchfx/xpath v1.1.10/go.mod"
        "github.com/antchfx/xpath v1.1.11"
        "github.com/antchfx/xpath v1.1.11/go.mod"
        "github.com/bettercap/gatt v0.0.0-20190418085356-fac16c0ad797"
        "github.com/bettercap/gatt v0.0.0-20190418085356-fac16c0ad797/go.mod"
        "github.com/bettercap/gatt v0.0.0-20191018133023-569d3d9372bb"
        "github.com/bettercap/gatt v0.0.0-20191018133023-569d3d9372bb/go.mod"
        "github.com/bettercap/gatt v0.0.0-20210323182651-e1a2422767ff"
        "github.com/bettercap/gatt v0.0.0-20210323182651-e1a2422767ff/go.mod"
        "github.com/bettercap/gatt v0.0.0-20210412143611-7a3c1c59fe92"
        "github.com/bettercap/gatt v0.0.0-20210412143611-7a3c1c59fe92/go.mod"
        "github.com/bettercap/nrf24 v0.0.0-20190219153547-aa37e6d0e0eb"
        "github.com/bettercap/nrf24 v0.0.0-20190219153547-aa37e6d0e0eb/go.mod"
        "github.com/bettercap/readline v0.0.0-20180208083827-9cec905dd291"
        "github.com/bettercap/readline v0.0.0-20180208083827-9cec905dd291/go.mod"
        "github.com/bettercap/readline v0.0.0-20210228151553-655e48bcb7bf"
        "github.com/bettercap/readline v0.0.0-20210228151553-655e48bcb7bf/go.mod"
        "github.com/bettercap/recording v0.0.0-20190408083647-3ce1dcf032e3"
        "github.com/bettercap/recording v0.0.0-20190408083647-3ce1dcf032e3/go.mod"
        "github.com/chifflier/nfqueue-go v0.0.0-20170228160439-61ca646babef"
        "github.com/chifflier/nfqueue-go v0.0.0-20170228160439-61ca646babef/go.mod"
        "github.com/chzyer/logex v1.1.10"
        "github.com/chzyer/logex v1.1.10/go.mod"
        "github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1"
        "github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1/go.mod"
        "github.com/creack/pty v1.1.9/go.mod"
        "github.com/davecgh/go-spew v1.1.0/go.mod"
        "github.com/davecgh/go-spew v1.1.1"
        "github.com/davecgh/go-spew v1.1.1/go.mod"
        "github.com/dustin/go-humanize v1.0.0"
        "github.com/dustin/go-humanize v1.0.0/go.mod"
        "github.com/elazarl/goproxy v0.0.0-20190421051319-9d40249d3c2f"
        "github.com/elazarl/goproxy v0.0.0-20190421051319-9d40249d3c2f/go.mod"
        "github.com/elazarl/goproxy v0.0.0-20191011121108-aa519ddbe484"
        "github.com/elazarl/goproxy v0.0.0-20191011121108-aa519ddbe484/go.mod"
        "github.com/elazarl/goproxy v0.0.0-20200809112317-0581fc3aee2d"
        "github.com/elazarl/goproxy v0.0.0-20200809112317-0581fc3aee2d/go.mod"
        "github.com/elazarl/goproxy v0.0.0-20210110162100-a92cc753f88e"
        "github.com/elazarl/goproxy v0.0.0-20210110162100-a92cc753f88e/go.mod"
        "github.com/elazarl/goproxy/ext v0.0.0-20190421051319-9d40249d3c2f"
        "github.com/elazarl/goproxy/ext v0.0.0-20190421051319-9d40249d3c2f/go.mod"
        "github.com/elazarl/goproxy/ext v0.0.0-20190711103511-473e67f1d7d2"
        "github.com/elazarl/goproxy/ext v0.0.0-20190711103511-473e67f1d7d2/go.mod"
        "github.com/elazarl/goproxy/ext v0.0.0-20210110162100-a92cc753f88e"
        "github.com/elazarl/goproxy/ext v0.0.0-20210110162100-a92cc753f88e/go.mod"
        "github.com/evilsocket/islazy v1.10.4"
        "github.com/evilsocket/islazy v1.10.4/go.mod"
        "github.com/evilsocket/islazy v1.10.6"
        "github.com/evilsocket/islazy v1.10.6/go.mod"
        "github.com/gobwas/glob v0.0.0-20181002190808-e7a84e9525fe"
        "github.com/gobwas/glob v0.0.0-20181002190808-e7a84e9525fe/go.mod"
        "github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e"
        "github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e/go.mod"
        "github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da"
        "github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da/go.mod"
        "github.com/google/go-cmp v0.5.2/go.mod"
        "github.com/google/go-cmp v0.5.5"
        "github.com/google/go-cmp v0.5.5/go.mod"
        "github.com/google/go-github v17.0.0+incompatible"
        "github.com/google/go-github v17.0.0+incompatible/go.mod"
        "github.com/google/go-querystring v1.0.0"
        "github.com/google/go-querystring v1.0.0/go.mod"
        "github.com/google/go-querystring v1.1.0"
        "github.com/google/go-querystring v1.1.0/go.mod"
        "github.com/google/gopacket v1.1.17"
        "github.com/google/gopacket v1.1.17/go.mod"
        "github.com/google/gopacket v1.1.18"
        "github.com/google/gopacket v1.1.18/go.mod"
        "github.com/google/gopacket v1.1.19"
        "github.com/google/gopacket v1.1.19/go.mod"
        "github.com/google/gousb v0.0.0-20190525092738-2dc560e6bea3"
        "github.com/google/gousb v0.0.0-20190525092738-2dc560e6bea3/go.mod"
        "github.com/google/gousb v0.0.0-20190812193832-18f4c1d8a750"
        "github.com/google/gousb v0.0.0-20190812193832-18f4c1d8a750/go.mod"
        "github.com/google/gousb v2.1.0+incompatible"
        "github.com/google/gousb v2.1.0+incompatible/go.mod"
        "github.com/google/renameio v0.1.0/go.mod"
        "github.com/gorilla/mux v1.7.2"
        "github.com/gorilla/mux v1.7.2/go.mod"
        "github.com/gorilla/mux v1.7.3"
        "github.com/gorilla/mux v1.7.3/go.mod"
        "github.com/gorilla/mux v1.8.0"
        "github.com/gorilla/mux v1.8.0/go.mod"
        "github.com/gorilla/websocket v1.4.0"
        "github.com/gorilla/websocket v1.4.0/go.mod"
        "github.com/gorilla/websocket v1.4.1"
        "github.com/gorilla/websocket v1.4.1/go.mod"
        "github.com/gorilla/websocket v1.4.2"
        "github.com/gorilla/websocket v1.4.2/go.mod"
        "github.com/hashicorp/mdns v1.0.1"
        "github.com/hashicorp/mdns v1.0.1/go.mod"
        "github.com/hashicorp/mdns v1.0.3"
        "github.com/hashicorp/mdns v1.0.3/go.mod"
        "github.com/inconshreveable/go-vhost v0.0.0-20160627193104-06d84117953b"
        "github.com/inconshreveable/go-vhost v0.0.0-20160627193104-06d84117953b/go.mod"
        "github.com/jpillora/go-tld v0.0.0-20190202073305-f16ca3b7b383"
        "github.com/jpillora/go-tld v0.0.0-20190202073305-f16ca3b7b383/go.mod"
        "github.com/jpillora/go-tld v1.0.0"
        "github.com/jpillora/go-tld v1.0.0/go.mod"
        "github.com/jpillora/go-tld v1.1.1"
        "github.com/jpillora/go-tld v1.1.1/go.mod"
        "github.com/kisielk/gotool v1.0.0/go.mod"
        "github.com/koppacetic/go-gpsd v0.4.0"
        "github.com/koppacetic/go-gpsd v0.4.0/go.mod"
        "github.com/kr/binarydist v0.1.0"
        "github.com/kr/binarydist v0.1.0/go.mod"
        "github.com/kr/pretty v0.1.0"
        "github.com/kr/pretty v0.1.0/go.mod"
        "github.com/kr/pretty v0.2.1"
        "github.com/kr/pretty v0.2.1/go.mod"
        "github.com/kr/pty v1.1.1/go.mod"
        "github.com/kr/text v0.1.0"
        "github.com/kr/text v0.1.0/go.mod"
        "github.com/kr/text v0.2.0"
        "github.com/kr/text v0.2.0/go.mod"
        "github.com/malfunkt/iprange v0.9.0"
        "github.com/malfunkt/iprange v0.9.0/go.mod"
        "github.com/mattn/go-colorable v0.1.2"
        "github.com/mattn/go-colorable v0.1.2/go.mod"
        "github.com/mattn/go-colorable v0.1.4"
        "github.com/mattn/go-colorable v0.1.4/go.mod"
        "github.com/mattn/go-colorable v0.1.6/go.mod"
        "github.com/mattn/go-colorable v0.1.7"
        "github.com/mattn/go-colorable v0.1.7/go.mod"
        "github.com/mattn/go-colorable v0.1.8"
        "github.com/mattn/go-colorable v0.1.8/go.mod"
        "github.com/mattn/go-isatty v0.0.8"
        "github.com/mattn/go-isatty v0.0.8/go.mod"
        "github.com/mattn/go-isatty v0.0.10"
        "github.com/mattn/go-isatty v0.0.10/go.mod"
        "github.com/mattn/go-isatty v0.0.12"
        "github.com/mattn/go-isatty v0.0.12/go.mod"
        "github.com/mdlayher/dhcp6 v0.0.0-20190311162359-2a67805d7d0b"
        "github.com/mdlayher/dhcp6 v0.0.0-20190311162359-2a67805d7d0b/go.mod"
        "github.com/mgutz/ansi v0.0.0-20170206155736-9520e82c474b"
        "github.com/mgutz/ansi v0.0.0-20170206155736-9520e82c474b/go.mod"
        "github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d"
        "github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d/go.mod"
        "github.com/mgutz/logxi v0.0.0-20161027140823-aebf8a7d67ab"
        "github.com/mgutz/logxi v0.0.0-20161027140823-aebf8a7d67ab/go.mod"
        "github.com/miekg/dns v1.0.14/go.mod"
        "github.com/miekg/dns v1.1.14"
        "github.com/miekg/dns v1.1.14/go.mod"
        "github.com/miekg/dns v1.1.22"
        "github.com/miekg/dns v1.1.22/go.mod"
        "github.com/miekg/dns v1.1.27/go.mod"
        "github.com/miekg/dns v1.1.31"
        "github.com/miekg/dns v1.1.31/go.mod"
        "github.com/miekg/dns v1.1.41"
        "github.com/miekg/dns v1.1.41/go.mod"
        "github.com/mitchellh/go-homedir v1.1.0"
        "github.com/mitchellh/go-homedir v1.1.0/go.mod"
        "github.com/pkg/errors v0.8.1"
        "github.com/pkg/errors v0.8.1/go.mod"
        "github.com/pkg/errors v0.9.1"
        "github.com/pkg/errors v0.9.1/go.mod"
        "github.com/pmezard/go-difflib v1.0.0"
        "github.com/pmezard/go-difflib v1.0.0/go.mod"
        "github.com/robertkrimen/otto v0.0.0-20180617131154-15f95af6e78d"
        "github.com/robertkrimen/otto v0.0.0-20180617131154-15f95af6e78d/go.mod"
        "github.com/robertkrimen/otto v0.0.0-20200922221731-ef014fd054ac"
        "github.com/robertkrimen/otto v0.0.0-20200922221731-ef014fd054ac/go.mod"
        "github.com/rogpeppe/go-charset v0.0.0-20180617210344-2471d30d28b4/go.mod"
        "github.com/rogpeppe/go-internal v1.3.0/go.mod"
        "github.com/stretchr/objx v0.1.0/go.mod"
        "github.com/stretchr/testify v1.2.1/go.mod"
        "github.com/stretchr/testify v1.3.0"
        "github.com/stretchr/testify v1.3.0/go.mod"
        "github.com/stretchr/testify v1.5.1"
        "github.com/stretchr/testify v1.5.1/go.mod"
        "github.com/stretchr/testify v1.7.0"
        "github.com/stretchr/testify v1.7.0/go.mod"
        "github.com/tarm/serial v0.0.0-20180830185346-98f6abe2eb07"
        "github.com/tarm/serial v0.0.0-20180830185346-98f6abe2eb07/go.mod"
        "github.com/thoj/go-ircevent v0.0.0-20190807115034-8e7ce4b5a1eb"
        "github.com/thoj/go-ircevent v0.0.0-20190807115034-8e7ce4b5a1eb/go.mod"
        "golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3/go.mod"
        "golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
        "golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
        "golang.org/x/crypto v0.0.0-20190621222207-cc06ce4a13d4"
        "golang.org/x/crypto v0.0.0-20190621222207-cc06ce4a13d4/go.mod"
        "golang.org/x/crypto v0.0.0-20190923035154-9ee001bba392/go.mod"
        "golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550"
        "golang.org/x/crypto v0.0.0-20191011191535-87dc89f01550/go.mod"
        "golang.org/x/crypto v0.0.0-20200622213623-75b288015ac9/go.mod"
        "golang.org/x/crypto v0.0.0-20200820211705-5c72a883971a"
        "golang.org/x/crypto v0.0.0-20200820211705-5c72a883971a/go.mod"
        "golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2/go.mod"
        "golang.org/x/lint v0.0.0-20200302205851-738671d3881b/go.mod"
        "golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
        "golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee/go.mod"
        "golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519/go.mod"
        "golang.org/x/net v0.0.0-20190310074541-c10a0554eabf/go.mod"
        "golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
        "golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
        "golang.org/x/net v0.0.0-20190620200207-3b0461eec859"
        "golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
        "golang.org/x/net v0.0.0-20190923162816-aa69164e4478/go.mod"
        "golang.org/x/net v0.0.0-20191014212845-da9a3fd4c582"
        "golang.org/x/net v0.0.0-20191014212845-da9a3fd4c582/go.mod"
        "golang.org/x/net v0.0.0-20200324143707-d3edc9973b7e/go.mod"
        "golang.org/x/net v0.0.0-20200925080053-05aa5d4ee321"
        "golang.org/x/net v0.0.0-20200925080053-05aa5d4ee321/go.mod"
        "golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
        "golang.org/x/net v0.0.0-20210410081132-afb366fc7cd1"
        "golang.org/x/net v0.0.0-20210410081132-afb366fc7cd1/go.mod"
        "golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
        "golang.org/x/sync v0.0.0-20190423024810-112230192c58"
        "golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
        "golang.org/x/sync v0.0.0-20210220032951-036812b2e83c"
        "golang.org/x/sync v0.0.0-20210220032951-036812b2e83c/go.mod"
        "golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5/go.mod"
        "golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
        "golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
        "golang.org/x/sys v0.0.0-20190405154228-4b34438f7a67/go.mod"
        "golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
        "golang.org/x/sys v0.0.0-20190626221950-04f50cda93cb"
        "golang.org/x/sys v0.0.0-20190626221950-04f50cda93cb/go.mod"
        "golang.org/x/sys v0.0.0-20190922100055-0a153f010e69/go.mod"
        "golang.org/x/sys v0.0.0-20190924154521-2837fb4f24fe/go.mod"
        "golang.org/x/sys v0.0.0-20191008105621-543471e840be/go.mod"
        "golang.org/x/sys v0.0.0-20191018095205-727590c5006e"
        "golang.org/x/sys v0.0.0-20191018095205-727590c5006e/go.mod"
        "golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
        "golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
        "golang.org/x/sys v0.0.0-20200323222414-85ca7c5b95cd/go.mod"
        "golang.org/x/sys v0.0.0-20200501145240-bc7a7d42d5c3/go.mod"
        "golang.org/x/sys v0.0.0-20200923182605-d9f96fdee20d"
        "golang.org/x/sys v0.0.0-20200923182605-d9f96fdee20d/go.mod"
        "golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
        "golang.org/x/sys v0.0.0-20210228012217-479acdf4ea46"
        "golang.org/x/sys v0.0.0-20210228012217-479acdf4ea46/go.mod"
        "golang.org/x/sys v0.0.0-20210303074136-134d130e1a04/go.mod"
        "golang.org/x/sys v0.0.0-20210320140829-1e4c9ba3b0c4"
        "golang.org/x/sys v0.0.0-20210320140829-1e4c9ba3b0c4/go.mod"
        "golang.org/x/sys v0.0.0-20210330210617-4fbd30eecc44/go.mod"
        "golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57"
        "golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57/go.mod"
        "golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
        "golang.org/x/text v0.3.0/go.mod"
        "golang.org/x/text v0.3.2"
        "golang.org/x/text v0.3.2/go.mod"
        "golang.org/x/text v0.3.3"
        "golang.org/x/text v0.3.3/go.mod"
        "golang.org/x/text v0.3.6"
        "golang.org/x/text v0.3.6/go.mod"
        "golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
        "golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac"
        "golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
        "golang.org/x/tools v0.0.0-20190907020128-2ca718005c18/go.mod"
        "golang.org/x/tools v0.0.0-20191216052735-49a3e744a425/go.mod"
        "golang.org/x/tools v0.0.0-20200130002326-2f3ba24bd6e7/go.mod"
        "golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
        "golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod"
        "golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543"
        "golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
        "golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1"
        "golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod"
        "gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
        "gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
        "gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
        "gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
        "gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
        "gopkg.in/errgo.v2 v2.1.0/go.mod"
        "gopkg.in/sourcemap.v1 v1.0.5"
        "gopkg.in/sourcemap.v1 v1.0.5/go.mod"
        "gopkg.in/yaml.v2 v2.2.2/go.mod"
        "gopkg.in/yaml.v2 v2.4.0/go.mod"
        "gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c"
        "gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
        "gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
        "gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
        "honnef.co/go/tools v0.0.0-2019.2.1"
        "honnef.co/go/tools v0.0.0-2019.2.1/go.mod"
        )
go-module_set_globals

DESCRIPTION="A complete, modular, portable and easily extensible MITM framework"
HOMEPAGE="https://github.com/bettercap/bettercap/"

SRC_URI="https://${EGO_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

RESTRICT="mirror"

RDEPEND="
	net-libs/libpcap
	net-libs/libnetfilter_queue
	net-libs/libnfnetlink
	virtual/libusb:*"
DEPEND="${RDEPEND}
	=dev-go/gopkg-sourcemap-1*
	"

BDEPEND="virtual/pkgconfig"

src_compile() {
	env GOBIN="${S}/bin" go install ./... || die "compile failed"
}

src_install() {
	dobin bin/bettercap
}

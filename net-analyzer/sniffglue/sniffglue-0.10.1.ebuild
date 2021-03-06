# Copyright 2017-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.2.0

EAPI=7

CRATES="
aho-corasick-0.7.6
ansi_term-0.11.0
ansi_term-0.12.1
anyhow-1.0.25
arrayref-0.3.5
arrayvec-0.4.12
arrayvec-0.5.1
atty-0.2.13
autocfg-0.1.7
backtrace-0.3.40
backtrace-sys-0.1.32
base64-0.10.1
base64-0.11.0
bitflags-1.2.1
blake2b_simd-0.5.9
block-buffer-0.7.3
block-padding-0.1.5
boxxy-0.11.0
bufstream-0.1.4
bumpalo-2.6.0
byte-tools-0.3.1
byteorder-1.3.2
bytes-0.4.12
c2-chacha-0.2.3
caps-0.3.3
cc-1.0.48
cfg-if-0.1.10
clap-2.33.0
cloudabi-0.0.3
constant_time_eq-0.1.4
crossbeam-deque-0.7.2
crossbeam-epoch-0.8.0
crossbeam-queue-0.1.2
crossbeam-utils-0.6.6
crossbeam-utils-0.7.0
ct-logs-0.6.0
dhcp4r-0.2.0
digest-0.8.1
dirs-2.0.2
dirs-sys-0.3.4
dns-parser-0.8.0
either-1.5.3
enum-primitive-derive-0.1.2
enum_primitive-0.1.1
env_logger-0.7.1
errno-0.2.4
errno-dragonfly-0.1.1
error-chain-0.12.1
failure-0.1.6
failure_derive-0.1.6
fake-simd-0.1.2
fnv-1.0.6
fuchsia-cprng-0.1.1
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.1.29
futures-cpupool-0.1.8
gcc-0.3.55
generic-array-0.12.3
getrandom-0.1.13
h2-0.1.26
heck-0.3.1
hermit-abi-0.1.5
http-0.1.21
http-body-0.1.0
httparse-1.3.4
humantime-1.3.0
hyper-0.12.35
hyper-rustls-0.17.1
idna-0.2.0
indexmap-1.3.0
iovec-0.1.4
itoa-0.4.4
js-sys-0.3.33
kernel32-sys-0.2.2
lazy_static-1.4.0
lexical-core-0.4.6
libc-0.2.66
lock_api-0.3.2
log-0.4.8
matches-0.1.8
maybe-uninit-2.0.0
memchr-2.2.1
memoffset-0.5.3
mio-0.6.21
mio-uds-0.6.7
miow-0.2.1
net2-0.2.33
nix-0.14.1
nix-0.15.0
nix-0.16.0
nodrop-0.1.14
nom-4.2.3
nom-5.0.1
num-traits-0.1.43
num-traits-0.2.10
num_cpus-1.11.1
opaque-debug-0.2.3
parking_lot-0.9.0
parking_lot_core-0.6.2
pcap-sys-0.1.3
percent-encoding-2.1.0
phf-0.8.0
phf_codegen-0.8.0
phf_generator-0.8.0
phf_shared-0.8.0
pkg-config-0.3.17
pktparse-0.4.1
pledge-0.3.1
ppv-lite86-0.2.6
proc-macro-error-0.2.6
proc-macro2-0.4.30
proc-macro2-1.0.6
quick-error-1.2.2
quote-0.3.15
quote-0.6.13
quote-1.0.2
rand-0.7.2
rand_chacha-0.2.1
rand_core-0.3.1
rand_core-0.4.2
rand_core-0.5.1
rand_hc-0.2.0
rand_os-0.1.3
rand_pcg-0.2.1
rdrand-0.4.0
redox_syscall-0.1.56
redox_users-0.3.1
reduce-0.1.2
regex-1.3.1
regex-syntax-0.6.12
ring-0.16.9
rust-argon2-0.5.1
rustc-demangle-0.1.16
rustc_version-0.2.3
rusticata-macros-2.0.4
rustls-0.16.0
rustyline-5.0.5
ryu-1.0.2
scoped-tls-0.1.2
scopeguard-1.0.0
sct-0.6.0
seccomp-sys-0.1.3
semver-0.9.0
semver-parser-0.7.0
serde-1.0.104
serde_derive-1.0.104
serde_json-1.0.44
sha2-0.8.0
siphasher-0.3.1
slab-0.4.2
smallvec-0.6.13
smallvec-1.1.0
sniffglue-0.10.1
sourcefile-0.1.4
spin-0.5.2
static_assertions-0.3.4
string-0.2.1
strsim-0.8.0
structopt-0.3.5
structopt-derive-0.3.5
strum-0.15.0
strum_macros-0.15.0
syn-0.11.11
syn-0.15.44
syn-1.0.11
synom-0.11.3
synstructure-0.12.3
syscallz-0.12.0
termcolor-1.0.5
textwrap-0.11.0
thread_local-0.3.6
time-0.1.42
tls-parser-0.9.2
tokio-0.1.22
tokio-buf-0.1.1
tokio-codec-0.1.1
tokio-core-0.1.17
tokio-current-thread-0.1.6
tokio-executor-0.1.9
tokio-fs-0.1.6
tokio-io-0.1.12
tokio-reactor-0.1.11
tokio-rustls-0.10.2
tokio-sync-0.1.7
tokio-tcp-0.1.3
tokio-threadpool-0.1.17
tokio-timer-0.2.12
tokio-udp-0.1.5
tokio-uds-0.2.5
toml-0.5.5
try-lock-0.2.2
typenum-1.11.2
unicode-bidi-0.3.4
unicode-normalization-0.1.11
unicode-segmentation-1.6.0
unicode-width-0.1.7
unicode-xid-0.0.4
unicode-xid-0.1.0
unicode-xid-0.2.0
untrusted-0.7.0
url-2.1.0
users-0.9.1
utf8parse-0.1.1
vec_map-0.8.1
version_check-0.1.5
void-1.0.2
want-0.2.0
wasi-0.7.0
wasm-bindgen-0.2.56
wasm-bindgen-backend-0.2.56
wasm-bindgen-macro-0.2.56
wasm-bindgen-macro-support-0.2.56
wasm-bindgen-shared-0.2.56
wasm-bindgen-webidl-0.2.56
web-sys-0.3.33
webpki-0.21.0
webpki-roots-0.17.0
weedle-0.10.0
winapi-0.2.8
winapi-0.3.8
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.2
winapi-x86_64-pc-windows-gnu-0.4.0
wincolor-1.0.2
ws2_32-sys-0.2.1
"

inherit cargo

DESCRIPTION="Secure multithreaded packet sniffer"
HOMEPAGE="https://github.com/kpcyrd/sniffglue"
SRC_URI="$(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
LICENSE="GPL-3.0" # Update to proper Gentoo format
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

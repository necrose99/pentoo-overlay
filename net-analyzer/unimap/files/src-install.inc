src_install() {
		cargo build --release
cd /var/tmp/portage/net-analyzer/unimap-0.2.0/work/${PV}/target/release/
	cp unimap /usr/bin/unimap
	dobin unimap
}

## crappy fix.
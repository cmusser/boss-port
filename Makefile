# $FreeBSD$

PORTNAME=	boss
DISTVERSION=	2.0.0
CATEGORIES=	sysutils

MAINTAINER=	cmusser@sonic.net
COMMENT=	Manage a set of processes
USE_RC_SUBR=    boss

USES=		cargo
USE_GITHUB=	yes
GH_ACCOUNT=	cmusser
GH_TAGNAME=	dfly-use-new-nix

CARGO_CRATES=	aho-corasick-0.7.13 \
		ansi_term-0.11.0 \
		anyhow-1.0.32 \
		arc-swap-0.4.7 \
		atty-0.2.14 \
		bitflags-1.2.1 \
		bytes-0.5.6 \
		cc-1.0.60 \
		cfg-if-0.1.10 \
		clap-2.33.3 \
		dtoa-0.4.6 \
		fuchsia-zircon-0.3.3 \
		fuchsia-zircon-sys-0.3.3 \
		futures-0.3.5 \
		futures-channel-0.3.5 \
		futures-core-0.3.5 \
		futures-executor-0.3.5 \
		futures-io-0.3.5 \
		futures-macro-0.3.5 \
		futures-sink-0.3.5 \
		futures-task-0.3.5 \
		futures-util-0.3.5 \
		heck-0.3.1 \
		hermit-abi-0.1.15 \
		iovec-0.1.4 \
		kernel32-sys-0.2.2 \
		lazy_static-1.4.0 \
		libc-0.2.77 \
		linked-hash-map-0.5.3 \
		log-0.4.11 \
		memchr-2.3.3 \
		mio-0.6.22 \
		mio-named-pipes-0.1.7 \
		mio-uds-0.6.8 \
		miow-0.2.1 \
		miow-0.3.5 \
		net2-0.2.35 \
		once_cell-1.4.1 \
		pin-project-0.4.23 \
		pin-project-internal-0.4.23 \
		pin-project-lite-0.1.7 \
		pin-utils-0.1.0 \
		proc-macro-error-1.0.4 \
		proc-macro-error-attr-1.0.4 \
		proc-macro-hack-0.5.18 \
		proc-macro-nested-0.1.6 \
		proc-macro2-1.0.21 \
		quote-1.0.7 \
		redox_syscall-0.1.57 \
		regex-1.3.9 \
		regex-syntax-0.6.18 \
		serde-1.0.116 \
		serde_derive-1.0.116 \
		serde_yaml-0.8.13 \
		shellwords-1.1.0 \
		signal-hook-registry-1.2.1 \
		slab-0.4.2 \
		socket2-0.3.15 \
		strsim-0.8.0 \
		structopt-0.3.17 \
		structopt-derive-0.4.10 \
		syn-1.0.41 \
		textwrap-0.11.0 \
		thread_local-1.0.1 \
		tokio-0.2.22 \
		tokio-macros-0.2.5 \
		unicode-segmentation-1.6.0 \
		unicode-width-0.1.8 \
		unicode-xid-0.2.1 \
		vec_map-0.8.2 \
		version_check-0.9.2 \
		winapi-0.2.8 \
		winapi-0.3.9 \
		winapi-build-0.1.1 \
		winapi-i686-pc-windows-gnu-0.4.0 \
		winapi-x86_64-pc-windows-gnu-0.4.0 \
		ws2_32-sys-0.2.1 \
		yaml-rust-0.4.4
.include <bsd.port.mk>

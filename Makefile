# $FreeBSD$

PORTNAME=	boss
DISTVERSION=	2.1.1
CATEGORIES=	sysutils

MAINTAINER=	cmusser@sonic.net
COMMENT=	Manage a set of processes
USE_RC_SUBR=    boss

USES=		cargo
USE_GITHUB=	yes
GH_ACCOUNT=	cmusser

CARGO_CRATES=   aho-corasick-0.7.15 \
                ansi_term-0.11.0 \
                anyhow-1.0.38 \
                atty-0.2.14 \
                autocfg-1.0.1 \
                bitflags-1.2.1 \
                bytes-1.0.1 \
                cc-1.0.66 \
                cfg-if-1.0.0 \
                clap-2.33.3 \
                dtoa-0.4.7 \
                futures-0.3.12 \
                futures-channel-0.3.12 \
                futures-core-0.3.12 \
                futures-executor-0.3.12 \
                futures-io-0.3.12 \
                futures-macro-0.3.12 \
                futures-sink-0.3.12 \
                futures-task-0.3.12 \
                futures-util-0.3.12 \
                heck-0.3.2 \
                hermit-abi-0.1.18 \
                lazy_static-1.4.0 \
                libc-0.2.86 \
                linked-hash-map-0.5.4 \
                log-0.4.14 \
                memchr-2.3.4 \
                mio-0.7.8 \
                miow-0.3.6 \
                nix-0.19.1 \
                ntapi-0.3.6 \
                once_cell-1.5.2 \
                pin-project-lite-0.2.4 \
                pin-utils-0.1.0 \
                proc-macro-error-1.0.4 \
                proc-macro-error-attr-1.0.4 \
                proc-macro-hack-0.5.19 \
                proc-macro-nested-0.1.7 \
                proc-macro2-1.0.24 \
                quote-1.0.9 \
                regex-1.4.3 \
                regex-syntax-0.6.22 \
                serde-1.0.123 \
                serde_derive-1.0.123 \
                serde_yaml-0.8.17 \
                shellwords-1.1.0 \
                signal-hook-registry-1.3.0 \
                slab-0.4.2 \
                socket2-0.3.19 \
                strsim-0.8.0 \
                structopt-0.3.21 \
                structopt-derive-0.4.14 \
                syn-1.0.60 \
                textwrap-0.11.0 \
                thread_local-1.1.3 \
                tokio-1.2.0 \
                tokio-macros-1.1.0 \
                unicode-segmentation-1.7.1 \
                unicode-width-0.1.8 \
                unicode-xid-0.2.1 \
                vec_map-0.8.2 \
                version_check-0.9.2 \
                winapi-0.3.9 \
                winapi-i686-pc-windows-gnu-0.4.0 \
                winapi-x86_64-pc-windows-gnu-0.4.0 \
                yaml-rust-0.4.5

.include <bsd.port.mk>

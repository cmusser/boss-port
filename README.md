# Port for `boss`

This is the BSD Ports system configuration project for boss.

## Building a port that depends on a crate not on crates.io

Currently, this project requires a patched version of the Nix
library that isn't available on crates.io. As a result, the
setup is a little more involved than usual.

1. The source of the modified dependency (Nix) is in a Github repository.
   I had done this anyway because I created a pull request with the
   intent on getting the change into the standard Nix crate.

2. In `Cargo.toml`, the dependency in `boss` on Nix uses the `git` and
   `branch` attributes to specify the one in Git. These are also recorded
   in `Cargo.lock`. This is in a separate branch and is tagged so that the
   Makefile here in `boss-port` can reference it using the GH_TAGNAME
   variable.

I tried coming at this in a different way--creating patches for
`Cargo.{lock,toml}` in `boss-port` (and not `boss` itself)--thinking it
would be easier to not have a special version of `boss` in Git. But this
resulted in Cargo errors regarding the checksums of the downloaded Nix
crate. I think the patches are applied too late in the process: they'd
need to happen before the `make makesum` step, which is when ther
dependencies are downloaded.

## Procedure

1. Make sure that the ports system is setup. On FreeBSD, this is done with

   ```
   sudo portsnap fetch extract
   ```

   On DragonFly the procedure is:

   ```
   cd /usr
   sudo make dports-create-shallow
   ```

2. Get rid of the old build directory:

   ```
   sudo rm -rf /usr/obj/dports/src/boss-port
   ```

3. Bump the DISTVERSION in the Makefile to match the Git tag of the new version.

4. Run the following:
    ```
    sudo make makesum
    ```

   This writes the distinfo file, which is in version control. Make
   sure you commit this when done.

   In the uncommon case where you're rebuilding a release, but reusing
   the same version number, remove the distfile tarball before running
   this command. On FreeBSD, it's in `/usr/ports/distfiles`. On
   DragonFlyBSD, it's in `/usr/distfiles`.

   On DragonFly, the base is `/usr/obj/dports`, so, the commands below
   need to be run via `sudo(8)`. Alternatively, I think that the
   WORKDIR environment variable can be set to a different location
   that's writable by a normal user. On FreeBSD, it's done in `work`
   in the current directory, so `sudo(8)` isn't needed.

5. If the Rust crates have never been defined, or have changed, get the
   configuration for them by doing the following:
   ```
   sudo make cargo-crates
   ```

   Paste the result of this into the Makefile.
   
6. Regenerate the `distinfo` file:
   ```
	sudo make makesum`
   ```

7. Go through package building steps (these are taken from the FreeBSD
   Porters Handbook):

   ```
   sudo make clean
   sudo make stage
   sudo make check-orphans
   sudo make package
   sudo make install
   sudo make deinstall
   ```
8. Install the built package:
   ```
   sudo pkg install /usr/obj/dports/src/boss-port/pkg/boss-2.0.0.txz
   ```

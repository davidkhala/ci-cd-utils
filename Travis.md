# Travis
- `sudo npm` is not supported, use `npm` directly
- **run`eval "$(gimme 1.12.x)"` for non-golang build to change preinstalled go version**
- Default work directory (often project root): `$TRAVIS_BUILD_DIR`
- current directory change is cached in following instruction line, the $PWD live even across major stage like `install`,`script`
- [THINGS NOT TO CACHE]
Large files that are quick to install but slow to download do not benefit from caching, as they take as long to download from the cache as from the original source:
    ```
    Android SDKs
    Debian packages
    JDK packages
    Compiled binaries
    Docker images
    ```

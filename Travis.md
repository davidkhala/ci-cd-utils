# Travis 
[![Build Status](https://travis-ci.com/davidkhala/ci-cd-utils.svg?branch=master)](https://travis-ci.com/davidkhala/ci-cd-utils)
- `sudo npm` is not supported, use `npm` directly
- **run`eval "$(gimme 1.12.x)"` for non-golang build to change preinstalled go version**
- [Default-environment-variables](https://docs.travis-ci.com/user/environment-variables/#default-environment-variables) is implicitly configured
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
- Do not currently support use of Docker on macOS

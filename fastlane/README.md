fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

### test

```sh
[bundle exec] fastlane test
```


  A lane that builds and tests the scheme "Tangem" using a clean and build application.
  Using enviroment: Production


### release

```sh
[bundle exec] fastlane release
```


  A lane that builds a "Tangem" scheme and uploads the archive to TestFlight for release.
  Using enviroment: Production
  Options:
  - version: app version
  - build: optional build number
  - changelog: string for description archive
  

### beta

```sh
[bundle exec] fastlane beta
```


A lane that builds a "Tangem Beta" scheme and uploads the archive to Firebase for testing.
Using enviroment: Production
Options:
- version: app version
- build: optional build number
- changelog: string for description archive


### alpha

```sh
[bundle exec] fastlane alpha
```


A lane that builds a "Tangem Alpha" scheme and uploads the archive to Firebase for testing.
Using enviroment: Test
Options:
- version: app version
- build: optional build number
- changelog: string for description archive


### refresh_dsyms

```sh
[bundle exec] fastlane refresh_dsyms
```


Load from testFlight dSyms and upload it to Firebase
Options:
- version: app version
- build: build number


----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).

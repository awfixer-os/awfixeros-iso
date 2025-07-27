<div align="center">

AWFixerOS ISO
===

AWFixerOS is a NixOS based Linux distribution focused on beginner friendliness and ease of use. This repository contains the configuration used to build the AWFixerOS ISO files.

</div>

## Where to download?

Nightly builds can be found in this repositories [GitHub Actions](https://github.com/awfixers-stuff/awfixeros-iso/actions)

## How to build

1) Clone this repository and navigate to the project directory
2) `nix build .#install-isoConfigurations.AWFixerOS`
3) The resulting ISO file will be linked in `result/iso/AWFixerOS-<version>.iso`

[builtwithnix badge]: https://img.shields.io/badge/Built%20With-Nix-41439A?style=for-the-badge&logo=nixos&logoColor=white
[builtwithnix]: https://builtwithnix.org/
[MIT badge]: https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge
[MIT]: https://opensource.org/licenses/MIT
[matrix badge]: https://img.shields.io/badge/matrix-join%20chat-0cbc8c?style=for-the-badge&logo=matrix&logoColor=white
[matrix]: https://matrix.to/#/#AWFixerOS:matrix.org
[discord badge]: https://img.shields.io/discord/1021080090676842506?color=7289da&label=Discord&logo=discord&logoColor=ffffff&style=for-the-badge
[discord]: https://discord.gg/6rWNMmdkgT

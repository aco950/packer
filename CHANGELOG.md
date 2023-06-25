# [2.0.0] (June 25, 2023)

### Changed

- Set `os/centos/7/run.sh` as executable for consistency.

- Added `yum makecache` in `common/packer.json` for increased 
  reliability by downloading and making usable all the metadata for the 
  currently enabled yum repositories. Equivalent to `apt-get update` in
  Debian/Ubuntu.

- Renamed `consul` folder to `consul-server` for clarity, and updated
  related `*.json` files to reflect changes. 

- Renamed `nomad` folder to `nomad-server` for clarity, and updated
  related `*.json` files to reflect changes. 

- Updated `nomad-install/packer.json` and `nomad-install/variables.json`
  in order to consolidate tasks. Nodes where Nomad will be installed 
  will also be Consul clients.

# [1.2.1] (June 23, 2023)

### Fixed

-  Cleaned up spacing for consistency.

# [1.2.0] (June 19, 2023)

### Added

- Added Packer instructions for creating an image that will be used for 
  standardizing Nomad server nodes (see `nomad-install` and `nomad`).

# [1.1.1] (June 12, 2023)

### Fixed

-  Cleaned up spacing for consistency.

# [1.1.0] (June 11, 2023)

### Added

- Added Packer instructions for creating a common image that will be
  used to standardize all nodes (see `common`).

- Added Packer instructions for creating an image that will be used for 
  standardizing Consul server nodes (see `consul-install` and `consul`).

- Added a `.gitignore` inside this repo's root directory.

# [1.0.2] (June 10, 2023)

### Changed

- Removed hashed password in the `rootpw --iscrypted` section in 
  `os/centos/7/http/anaconda-ks.cfg`.

- Clarified Linux distribution in use for these examples in `README.md`.

- Added `secrets.json` to `os/centos/7/.gitignore`.

- Removed hard-coding of `$dest_dir` in `os/centos/7/run.sh`.

# [1.0.1] (June 08, 2023)

### Fixed

- Removed extra header line in README.md.

# [1.0.0] (June 08, 2023)

- Initial commit.

[2.0.0]: https://github.com/aco950/packer/releases/tag/v2.0.0
[1.2.1]: https://github.com/aco950/packer/releases/tag/v1.2.1
[1.2.0]: https://github.com/aco950/packer/releases/tag/v1.2.0
[1.1.1]: https://github.com/aco950/packer/releases/tag/v1.1.1
[1.1.0]: https://github.com/aco950/packer/releases/tag/v1.1.0
[1.0.2]: https://github.com/aco950/packer/releases/tag/v1.0.2
[1.0.1]: https://github.com/aco950/packer/releases/tag/v1.0.1
[1.0.0]: https://github.com/aco950/packer/releases/tag/v1.0.0


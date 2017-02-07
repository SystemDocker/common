# SystemDocker Common

Common drop-ins and utilities for SystemDocker units.

## Installation

To install SystemDocker Common, perform the following commands:

```
mkdir -p /srv/docker
git clone --recursive https://github.com/SystemDocker/common.git /srv/docker/common
/srv/docker/common/install.sh
```

## Drop-ins
All drop-ins are stored in the `dropins/` folder. Where the filename ends `.conf` these drop-ins are designed to be symbolically linked to from the drop-in directory of your service (see [Using drop-ins](#using-drop-ins)); where they end `.conf.tpl` these drop-ins are designed to be used as a template and should be copied into the drop-in directory of your service and edited there (see [Using drop-in templates](#using-drop-in-templates)).

### Using drop-ins
**TODO:** More detail about using drop-ins

### Using drop-in templates
**TODO:** More detail about using drop-in templates

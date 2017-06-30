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

## Units
To control core docker functionality, such as the creation of networks, docker units have been provided which represent these objects. Units should be installed by symbolically linking them in the `/etc/systemd/system` directory.

### docker-network

The `docker-network@.service` unit creates a docker network with the name matching the instance name. The `dropins/docker-network.conf.j2` dropin template can be used with services which should use the network.

To customise each network, dropins can be used to specify environment variables. See [dockenv](https://github.com/SystemDocker/dockenv) for details on the environment variable which can be set through dropins to control the creation of the network.

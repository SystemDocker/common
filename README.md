# SystemDocker Common
Common drop-ins and utilities for SystemDocker units

## Drop-ins
All drop-ins are stored in the `dropins/` folder. Where the filename ends `.conf` these drop-ins are designed to be symbolically linked to from the drop-in directory of your service (see [Using drop-ins](#using-drop-ins)); where they end `.conf.tpl` these drop-ins are designed to be used as a template and should be copied into the drop-in directory of your service and edited there (see [Using drop-in templates](#using-drop-in-templates)).

### Using drop-ins
**TODO:** More detail about using drop-ins

### Using drop-in templates
**TODO:** More detail about using drop-in templates

### setenv drop-ins
Some of the drop-ins start with the prefix `setenv-`. These drop-ins utilise the `systemctl set-environment` command to update the systemd environment during runtime. Unlike using the `Environment=` predicate, setting environment variables in this way can lead to scope issue but the advantage is that they can be set from the result of commands and specifically, they can be used to set environment variables based on the specific runtime of the service.

#### Scope of setenv drop-ins
The environment variables set via `setenv` drop-ins are only available in later systemd lifecycle stages, or in the same stage where it is executed after the setenv is (achived by the strict ordering imposed on drop-ins).

**TODO:** Expand on this topic

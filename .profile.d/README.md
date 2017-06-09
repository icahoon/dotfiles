# Files you need to create

## name.sh

    export NAME="Ian Cahoon"
    export EMAIL="icahoon@gmail.com"


## \_ssh\_keys.sh

export ssh\_keys="id\_rsa"

The variable *ssh\_keys* contains a space separated list of ssh keys found in your ~/.ssh directory that will
be loaded by the ssh-agent.

## gerrit.sh

    export gerrit="<hostname of your gerrit server>"
    export gerri\t_port=<port used by gerrit server>

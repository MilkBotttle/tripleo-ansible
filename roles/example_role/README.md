# example role
Roles expect files to be in certain directory names. Roles must include at
least one of these directories, however it is perfectly fine to exclude any 
which are not being used. When in use, each directory must contain a 
main.yml file, which contains the relevant content:

* tasks - contains the main list of tasks to be executed by the role.
* handlers - contains handlers, which may be used by this role or even anywhere outside this role.
* defaults - default variables for the role (see Variables for more information).
* vars - other variables for the role (see Variables for more information).
* files - contains files which can be deployed via this role.
* templates - contains templates which can be deployed via this role.
* meta - defines some meta data for this role. See below for more details.

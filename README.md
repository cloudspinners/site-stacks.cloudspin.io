
This is a cloudspin project to provision and manage infrastructure for a public repository for cloudspin stack artefacts.


## Stack contents

This needs to manage:

- An S3 bucket to hold stuff
- DNS for stacks.cloudspin.com

Maybe some other stuff, too, we'll see.


## Bootstrap stacks

I've got two additional stacks:
- *iam*: For the IAM roles used by cloudspin to manage the other stacks.
- *state*: For the S3 bucket to manage the Terraform state.

The process to bootstrap everything is currently pretty clunky. For each of these, the steps are:

1. Edit the `stack-NAME-local.yaml` file to use local state
2. Run `rake setup:NAME:up` (optionally run dry and plan beforehand)
3. Edit the `stack-NAME-local.yaml` file to use remote state, with the `migrate` options set
4. Run `rake setup:NAME:plan` to migrate the state
5. Edit the `stack-NAME-local.yaml` file to unset the `migrate` option



 
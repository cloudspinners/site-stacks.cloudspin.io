
This is a cloudspin project to provision and manage infrastructure for a public repository for cloudspin stack artefacts.


## Stack contents

This needs to manage:

- An S3 bucket to hold stuff
- DNS for stacks.cloudspin.com

Maybe some other stuff, too, we'll see.


## Bootstrap stacks

I've got two additional stacks, one for the IAM roles used by cloudspin to manage the other stacks, and one for the S3 bucket to manage the Terraform state.

 
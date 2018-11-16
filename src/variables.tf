variable "instance_identifier" {
  description = "A unique identifier for this instance of the stack."
}

variable "environment_name" {
  description = "An identifier to link a collection of stack instances that work together."
}

variable "region" {
  description = "The region into which to deploy the stack."
  default     = "eu-west-1"
}

variable "aws_profile" {
  description = "The profile in ~/.aws/credentials to use."
  default     = "default"
}

variable "assume_role_arn" {
  description = "The IAM role to assume."
  default     = ""
}


data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "repository_bucket" {
  bucket = "spinrepo-${var.environment_name}-${data.aws_caller_identity.current.account_id}"

  acl    = "public-read"
  # policy = "${file("policy.json")}"

  website {
      index_document = "index.html"
      error_document = "error.html"

      routing_rules = <<EOF
[{
      "Condition": {
          "KeyPrefixEquals": "docs/"
      },
      "Redirect": {
          "ReplaceKeyPrefixWith": "documents/"
      }
}]
EOF
    }

  versioning {
    enabled = true
  }

}

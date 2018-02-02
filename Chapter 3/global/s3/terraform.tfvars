terragrunt = {
  remote_state {
    backend = "s3"

    config {
      bucket         = "mlichstein-terraform-state"
      encrypt        = true
      key            = "global/s3/terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "tf-lock-table"
    }
  }
}
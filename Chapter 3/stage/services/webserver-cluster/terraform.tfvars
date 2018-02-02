terragrunt = {
  remote_state {
    backend = "s3"

    config {
      bucket         = "mlichstein-terraform-state"
      encrypt        = true
      key            = "stage/services/webserver-cluster/terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "tf-lock-table"
    }
  }
}
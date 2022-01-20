
resource "aws_codebuild_project" "project" {
  name          = "${terraform.workspace}-${var.name}" 
  description   = "my_codebuild_project"
  build_timeout = var.build_timeout
  service_role  = var.service_role

  artifacts {
    type = var.artifact_type
    }
  source {
    type            = var.type
    location        = var.location
    git_clone_depth = var.clone_depth
    buildspec       = var.buildspec_location

    git_submodules_config {
      fetch_submodules = var.fetch_submodules
    }
  }
  environment {
    compute_type                = var.compute_type
    image                       = var.image
    type                        = var.environment_type
    image_pull_credentials_type = "CODEBUILD"

    environment_variable {
      name  = var.env_name
      value = var.env_value
    }
  }
  logs_config {
    cloudwatch_logs {
      group_name  = var.group_name
      stream_name = var.stream_name
    }

    s3_logs {
          status= var.status #"DISABLED"
    }
  }
  
   tags = {
    id= "${terraform.workspace}-${var.tags}"
  }
}

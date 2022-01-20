module "project" {
  source                  = "./modules/codebuild"
  service_role            = module.IAM.codebuild_role_arn
  name                    = var.codebuild.name
  build_timeout           = var.codebuild.build_timeout
  artifact_type           = var.codebuild.artifact_type
  fetch_submodules        = var.codebuild.fetch_submodules
  type                    = var.codebuild.type
  clone_depth             = var.codebuild.clone_depth
  location                = var.codebuild.location
  buildspec_location      = var.codebuild.buildspec_location
  compute_type            = var.codebuild.compute_type
  image                   = var.codebuild.image
  environment_type        = var.codebuild.environment_type
  group_name              = var.codebuild.group_name
  stream_name             = var.codebuild.stream_name
  status                  = var.codebuild.status
  env_name                = var.codebuild.env_name
  env_value               = var.codebuild.env_value
  tags                    = var.codebuild.tags
}
module "IAM" {
  source = "./modules/iam"
  name   = var.iam.name
  
}
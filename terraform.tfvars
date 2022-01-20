codebuild={
    name                  = "my-project"
    build_timeout         = "5"
    artifact_type         = "NO_ARTIFACTS"
    type                  = "GITHUB"
    fetch_submodules      = true
    clone_depth           = 1
    location              = "https://github.com/danialfiaz/hello-world.git"
    buildspec_location    = "buildspec/buildspec.yml"
    compute_type          = "BUILD_GENERAL1_SMALL"
    image                 = "aws/codebuild/standard:1.0"
    environment_type      = "LINUX_CONTAINER"
    group_name            = "logs-checking"
    stream_name           = "logs-stream"
    status                = "DISABLED"
    env_name              = "danial"
    env_value             = "best-friend"
    tags                  = "test"
    }

iam ={
  name="my-project_codebuild_deploy_role"
}
variable "codebuild" {
    type= object({
        name                 = string
        build_timeout        = string
        artifact_type        = string
        type                 = string
        fetch_submodules     = bool
        clone_depth          = number
        location             = string
        buildspec_location   = string
        compute_type         = string
        image                = string
        environment_type     = string
        group_name           = string
        stream_name          = string
        status               = string
        env_name             = string
        env_value            = string
        tags                 = string
    })
  
}
variable "iam" {
    type= object({
        name = string
    })
  
}
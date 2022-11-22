data "terraform_remote_state" "base" {
  backend = "remote"
  config = {
    organization = var.tfc_org_name
    workspaces = {
      name = var.tfc_base_workspace_name
    }
  }
}

module "app" {
  source = "github.com/martibosch/cookiecutter_django_doge_example//terraform/modules/app"
  env    = "prod"

  resource_prefix = var.resource_prefix
  droplet_image   = var.droplet_image
  droplet_region  = var.droplet_region
  droplet_size    = var.droplet_size
  a_record_name   = "staging"
  create_cname    = true

  do_ssh_key_id     = data.terraform_remote_state.base.outputs.do_ssh_key_id
  droplet_user_data = data.terraform_remote_state.base.outputs.droplet_user_data
  do_project_id     = data.terraform_remote_state.base.outputs.do_project_id
  gh_repo_name      = data.terraform_remote_state.base.outputs.gh_repo_name
}

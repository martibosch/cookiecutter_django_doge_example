tfc_org_name           = "exaf-epfl"
project_slug           = "cookiecutter_django_doge_example"
ssh_key_name           = "cookiecutter_django_doge_example"
docker_compose_version = "2.12.2"
gh_repo_name           = "cookiecutter_django_doge_example"
droplet_user           = "ubuntu"
droplet_prefix         = "cookiecutter_django_doge_example"
droplet_image          = "ubuntu-22-04-x64"
droplet_region         = "fra1"
droplet_size_stage     = "s-1vcpu-1gb"
env_file_map_stage     = { production_django = ".envs/.production/.django", production_postgres = ".envs/.production/.postgres", production_traefik = ".envs/.production/.traefik", staging_django = ".envs/.staging/.django", staging_traefik = ".envs/.staging/.traefik" }
droplet_size_prod      = "s-2vcpu-4gb"
env_file_map_prod      = { production_django = ".envs/.production/.django", production_postgres = ".envs/.production/.postgres", production_traefik = ".envs/.production/.traefik" }
do_project_name        = "cookiecutter_django_doge_example"
do_project_description = "Example Django app using the cookiecutter-django-doge template"

# tokens
do_token     = "8c52d26ffb5b224125bd905f1f60ab04a952b6ccfb7bce189f23ddc37638728b"
gh_token     = "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"
tf_api_token = "y4e3IMLYQszWLg.atlasv1.FrBCkTy8oaOc8N1qzdNPvvEyzObOmSDCd5sUgJzTRqj7yhsBgIbd5IqyR9RZ0J3eOO8"

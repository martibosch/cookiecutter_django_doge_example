terraform {
  cloud {
    organization = "exaf-epfl"
    workspaces {
      name = "cookiecutter_django_doge_example-meta"
    }
  }
}

/*
Joe Brown
FHLB Terraform Training
*/

terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:1.23.4"
  keep_locally = true //keep image after "destroy"
}

# Create NginX docker resource
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  # name  = "tutorial"
  name = var.container_name
  ports {
    #internal = 80
    internal = var.internal_port
    #external = 2224
    external = var.external_port
  }
}


# Produces an output value name "container_id"
# this is the UUID terraform uses internally to track this resource

output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
  sensitive   = true
}

# Produces an output value name "image_id"
# This is the docker image identifier

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.image_id
  sensitive   = true
}


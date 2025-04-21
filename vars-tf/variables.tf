variable "container_name" {
  description = "Value of the name for the Docker container"
  # basic types include string, number, and bool
  type        = string
  default     = "ExampleNginxContainer"
}

variable "internal_port" {
  description = "Value of the Internal Port for the Docker container"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Value of the External Port for the docker container"
  type        = number
  default     = 2224
}

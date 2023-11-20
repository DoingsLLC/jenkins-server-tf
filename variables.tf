# Variables for our Terraform Configuration files

variable "droplet_image" {
  type        = string
  description = "the image to use for our Linux server"
}


variable "droplet_name" {
  type        = string
  description = "name for our droplet"
}

variable "droplet_region" {
  type        = string
  description = "region for our droplet"

}

variable "droplet_size" {
  type        = string
  description = "the disk size for our image"
}

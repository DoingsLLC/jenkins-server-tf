# Data source for our SSH key

data "digitalocean_ssh_key" "doings-dokey" {
  name = "doings-digitalocean-key"
}

# Creating a Digital Ocean Droplet
resource "digitalocean_droplet" "doings-droplet" {
  image    = var.droplet_image
  name     = var.droplet_name
  region   = var.droplet_region
  size     = var.droplet_size
  ssh_keys = [data.digitalocean_ssh_key.doings-dokey.id]
}

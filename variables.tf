// digitalocean
variable "digitalocean_token" {
  type = string
}

// @see: https://marketplace.digitalocean.com/apps/ghost
variable "digitalocean_droplet_image" {
  type = string
  default = "etcsec-ghost-webserver"
}

variable "digitalocean_droplet_name" {
  type = string
  default = "etcsec-ghost-webserver"
}

// @see: https://developers.digitalocean.com/documentation/v2/#regions
variable "digitalocean_droplet_region" {
  type = string
  default = "nyc1"
}

// @see: https://developers.digitalocean.com/documentation/v2/#sizes
variable "digitalocean_droplet_size" {
  type = string
  default = "s-1vcpu-1gb"
}

variable "digitalocean_ssh_key" {
  type = string
}

variable "digitalocean_droplet_backup" {
  type = bool
  default = false
}
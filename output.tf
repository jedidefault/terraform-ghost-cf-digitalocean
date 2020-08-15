output "digitalocean_droplet_ip" {
  value = data.digitalocean_droplet.ghost-18-04.ipv4_address
  description = "Your droplet ip address."
}

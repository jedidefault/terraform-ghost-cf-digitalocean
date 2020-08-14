# terraform-ghost-cf-digitalocean

A simple terraform configuration for [Ghost](https://ghost.org/) with Digitalocean and Cloudflare.

## How to use

1. Download and setup credentials.
```
$ git clone https://github.com/blauerberg/terraform-ghost-cf-digitalocean.git
$ cd terraform-ghost-cf-digitalocean
$ cp terraform.tfvars.example terraform.tfvars

# set your token of DigitalOcean
$ sed -i -e "s/YOUR_DIGITALOCEAN_TOKEN/{your digitalocean token}/" terraform.tfvars

# set your ssh key name of DigitalOcean
$ sed -i -e "s/YOUR_DIGITALOCEAN_SSH_KEY/{your digitalocean ssh key name}/" terraform.tfvars

# set your cloudflare email address
$ sed -i -e "s/YOUR_CLOUDFLARE_EMAIL/{your cloudflare email address}/" terraform.tfvars

```

2. Apply terraform configuration.
```
$ terraform init
$ terraform plan
$ rerraform apply
```

3. After a minutes, you will show the external ip of droplet you've created by terraform. Last step, let's login your droplet and setup your Ghost!
```
ssh root@{your droplet ip}
```

4. Enjoy! :slightly_smiling_face:

## Configurations

Available variables is below. You can override all values via `terraform.tfvars`.

| variable | description | default |
| :--- | :--- | :--- |
| `digitalocean_token` | token of digitalocean | none |
| `digitalocean_droplet_image` | image name of droplet | `etcsec-ghost-webserver` |
| `digitalocean_droplet_name` | droplet name | `etcsec-ghost-webserver` |
| `digitalocean_droplet_region` | region | `nyc1` |
| `digitalocean_droplet_size` | instance type of droplet | `s-1vcpu-1gb` |
| `digitalocean_ssh_key` | ssh key name of digitalocean | `SSH KEY NAME` |
| `digitalocean_droplet_backup` | whether if enable backup for droplet | `false` |

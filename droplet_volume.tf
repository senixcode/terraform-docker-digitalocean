# Specify the Terraform provider to use
provider "digitalocean" {
  token = var.digitalocean_token_secundary
}
data "template_file" "cloud_init_yaml" {
  template = file("cloud-init.yaml")
  vars = {
    init_ssh_public_key = file(var.ssh_public_key)
  }
}

resource "digitalocean_droplet" "server_nginx" {
  image              = var.droplet_image
  name               = "test-nginx"
  region             = var.region
  size               = var.droplet_size
  private_networking = var.private_networking
  ssh_keys = [
    var.ssh_key_fingerprint
  ]
  user_data = data.template_file.cloud_init_yaml.rendered
}


output "public_ip_server" {
  value = digitalocean_droplet.server_nginx.ipv4_address
}

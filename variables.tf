variable "digitalocean_token_secundary" {
  description = "DigitalOcean Api Token"
}
variable "ssh_key_fingerprint" {
  description = "Fingerprint of the public ssh key stored on DigitalOcean"
}

variable "region" {
  description = "DigitalOcean region"
  default     = "nyc3"
}
variable "droplet_image" {
  description = "DigitalOcean droplet image name"
  default     = "ubuntu-18-04-x64"
}
variable "droplet_size" {
  description = "Droplet size for server"
  default     = "s-1vcpu-2gb"
}
variable private_networking {
  default = "false"
}
variable "ssh_public_key" {
  description = "Local public ssh key"
  default     = "~/.ssh/id_rsa.pub"
}

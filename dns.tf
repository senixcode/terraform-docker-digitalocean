resource "digitalocean_domain" "senixcode" {
  name = "senixcode.dev"
}

# Add a record to the domain
resource "digitalocean_record" "server_nginx" {
  domain = digitalocean_domain.senixcode.name
  type   = "A"
  name   = "senixcode"
  value  = digitalocean_droplet.server_nginx.ipv4_address
}

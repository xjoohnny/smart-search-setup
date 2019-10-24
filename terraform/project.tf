resource "digitalocean_project" "SmartSearch" {
  name        = "SmartSearch"
  description = "FIAP / AM / 2019."
  purpose     = "Web Application"
  environment = "Development"
  resources   = ["${digitalocean_droplet.smartsearch-app02.urn}"]
}

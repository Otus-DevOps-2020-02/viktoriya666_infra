terraform {
  # Версия terraform
  required_version = "~>0.12"
}

provider "google" {
  ##credentials = file("/mnt/c/Users/Prophet/Desktop/Vikusik/8. terraform 1/service.json")
  # Версия провайдера
  version = "~>2.5.0"

  # ID проекта
  project = "infra-271012"
  region = "europe-west-1"
}


resource "google_compute_firewall" "firewall_ssh" {
  name = "default-allow-ssh-1"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["22"]
  }
  source_ranges = var.source_ranges
}

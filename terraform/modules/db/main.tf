terraform {
  # Версия terraform
  required_version = "~>0.12"
}

provider "google" {
  credentials = file("/mnt/c/Users/Prophet/Desktop/Vikusik/8. terraform 1/service.json")
  # Версия провайдера
  version = "~>2.5.0"

  # ID проекта
  project = "infra-271012"
  region = "europe-west-1"
}

resource "google_compute_instance" "db" {
  name         = "reddit-db-1"
  machine_type = "g1-small"
  zone         = var.zone
  tags         = ["reddit-db-1"]
  boot_disk {
  initialize_params {
    image = var.db_disk_image
   }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata = {
    ssh-keys = var.public_key_path
  }
}

resource "google_compute_firewall" "firewall_mongo" {
  name = "allow-mongo-default"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }
  target_tags = ["reddit-db-1"]
  source_tags = ["reddit-app-1"]
}

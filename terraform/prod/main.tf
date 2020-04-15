terraform {
  required_version = "~>0.12"
}

provider "google" {
  credentials = file("C:/Users/Prophet/Desktop/Vikusik/8. terraform 1/service.json")
  version     = "~>2.5"
  project     = var.project
  region      = var.region
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
}

module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["82.155.222.156/32"]
  env           = var.env
}

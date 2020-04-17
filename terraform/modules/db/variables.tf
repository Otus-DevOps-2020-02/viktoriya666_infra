variable db_disk_image {
  description = "Disk image for reddit db"
  default = "reddit-db-base"
}
variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}
variable public_key_path {
  description = "file${("~/.ssh/id_rsa.pub")}"
}

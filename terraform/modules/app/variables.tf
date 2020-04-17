variable app_disk_image {
  description = "Disk image for reddit app"
  default = "reddit-app-base"
}
variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}
variable public_key_path {
  description = "file${("~/.ssh/id_rsa.pub")}"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
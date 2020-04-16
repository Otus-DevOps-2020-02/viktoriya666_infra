variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
variable public_key_path {
  # Описание переменной
  description = "file${("~/.ssh/id_rsa.pub")}"
}

variable private_key_path {
  # Описание переменной
  description = "file${("~/.ssh/id_rsa")}"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable disk_image {
  description = "Disk image"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable env {
  description = "environment"
}

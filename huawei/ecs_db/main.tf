resource "huaweicloud_compute_instance" "db_instance" {
  name               = var.name
  description        = var.description
  availability_zone  = var.availability_zone
  image_id           = var.image_id
  flavor_id          = var.flavor_id
  key_pair           = var.key_pair
  security_group_ids = var.security_group_ids
  tags               = var.tags

  network {
    uuid = var.subnet_id
  }

  system_disk_type = var.system_disk_type
  system_disk_size = var.system_disk_size

  user_data = <<-EOF
    #!/bin/bash
    timedatectl set-timezone UTC
    timedatectl set-ntp true
    sudo apt-get update && sudo apt-get upgrade
  EOF
}

resource "huaweicloud_evs_volume" "db_instance_0_data" {
  name              = var.disk_name
  description       = var.disk_description
  volume_type       = var.disk_type
  size              = var.disk_size
  tags              = var.tags
  availability_zone = var.availability_zone
  server_id         = huaweicloud_compute_instance.db_instance.id
}
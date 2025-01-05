variable "name" {
    description = "Name of the ecs instances"
    type = string
}

variable "description" {
    description = "Description of the ecs instances"
    type = string
}

variable "availability_zone" {
    description = "Availability zone of the ecs instances"
    type = string
    default = "ap-southeast-4"
}

variable "image_id" {
    description = "Image id of the ecs instances"
    type = string
}

variable "flavor_id" {
    description = "Flavor of the ecs instances"
    type = string
    default = "t6.small.1"
}

variable "key_pair" {
    description = "Keypair of the ecs instances"
    type = string
}

variable "security_group_ids" {
    description = "Security group of the ecs instances"
    type    = list(string)
}

variable "tags" {
    description = "Tags of the ecs instances"
    type = map(string)
}

variable "subnet_id" {
    description = "Subnet id of the ecs instances"
    type = string
}

variable "system_disk_type" {
    description = "System disk type of the ecs instances"
    type = string
    default = "SAS"
}

variable "system_disk_size" {
    description = "System disk size of the ecs instances"
    type = number
    default = 10
}

variable "disk_name" {
    description = "Disk data name of the ecs instances"
    type = string
}

variable "disk_description" {
    description = "Disk data description of the ecs instances"
    type = string
}

variable "disk_type" {
    description = "Disk data type of the ecs instances"
    type = string
    default = "SAS"
}

variable "disk_size" {
    description = "Disk data size of the ecs instances"
    type = number
}
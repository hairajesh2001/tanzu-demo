#
This is module which executed during cluster provisioning.

below the list of variables need to be declared in cluster  declaration file



variable "vmw_cloud_api_token"{
type = string
}

variable "mgt_cluster_name"{
type = string
}

variable "cluster_name"{
type = string
}


variable "provisioner_name"{
type = string
}
variable "labels" {
type = map(string)
}

variable "tkg_version" {
type = string
}

variable "control_vm_class" {

type = string
}


variable "worker_count" {
type  = number
}
variable "work_class"  {
type = string
}
variable "description"  {
type = string
}




#variable "vmw_cloud_api_token" {
#type = string
#default = "K0j2Y7UV4LoWmkOLM0TlkOzTMM4gFY0K7b57a7unKJL77eTYvzaYD3fk92rkp-g5"
#}
variable "mgt_cluster_name"{
type = string
}

variable "cluster_name"{
type = string
}

variable "clustergroup"{
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

variable "high_availability" {
type = string 
default = false
}

#using terraform tanzu-mission-control plugin to create tanzu kubernetes clusters

modules stored stored cluster_bootstrap/

cluster config files are stored tanzu-cluster/

Sample config file 

```
module "sv1-terraform-demo" {
  source            = "../cluster_bootstrap/"
  cluster_name      = "sv1-terraform-demo"
  clustergroup = "automation"
  mgt_cluster_name  = "dev-tanzu"
  provisioner_name  = "sv1-dev-sandbox-vns"
  tkg_version       = "v1.24.11+vmware.1-fips.1-tkg.1.ubuntu"
  control_vm_class  = "best-effort-large"
  worker_count      = "1"
  work_class        = "best-effort-large"
  description       = "demo for the vmware demo cluster provision"
  high_availability = "false"
  labels = {
    "app" : "Internal",
    "ci-account" : "home",
    "ci-department" : "IT",
    "ci-e2customer" : "internal",
    "ci-env" : "dev",
  }
}


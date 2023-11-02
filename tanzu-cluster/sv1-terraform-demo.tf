module "sv1-terraform-demo" {
  source            = "../cluster_bootstrap/"
  cluster_name      = "sv1-terraform-demo"
  clustergroup = "dev-packages-demo"
  mgt_cluster_name  = "e2open-dev-tanzu"
  provisioner_name  = "sv1-dev-sandbox-vns"
  tkg_version       = "v1.24.11+vmware.1-fips.1-tkg.1.ubuntu"
  control_vm_class  = "best-effort-large"
  worker_count      = "3"
  work_class        = "best-effort-small"
  description       = "demo for the vmware demo cluster provision"
  high_availability = "false"  
  labels = {
    "app" : "Internal",
    "ci-account" : "E2open",
    "ci-department" : "IT",
    "ci-e2customer" : "internal",
    "ci-env" : "dev",
  }
}

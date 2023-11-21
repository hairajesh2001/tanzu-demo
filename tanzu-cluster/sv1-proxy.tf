module "sv1-proxy-blue-demo" {
  source            = "../cluster_bootstrap/"
  cluster_name      = "sv1-proxy-blue-demo"
  clustergroup = "dev-packages-demo"
  mgt_cluster_name  = "homelab-dev-tanzu"
  provisioner_name  = "sv1-dev-sandbox-vns"
  tkg_version       = "v1.22.9---vmware.1-tkg.1.cc71bc8"
  control_vm_class  = "homelab-small-workernode-1"
  worker_count      = "3"
  work_class        = "best-effort-large"
  description       = "demo for the proxy blue/green deployment"
  high_availability = "false"  
  labels = {
    "app" : "Internal",
    "ci-account" : "homelab",
    "ci-department" : "IT",
    "ci-customer" : "internal",
    "ci-env" : "dev",
  }
}

terraform {
  required_providers {
    tanzu-mission-control = {
      source  = "vmware/tanzu-mission-control"
      version = "1.2.5"
    }
  }

}
provider "tanzu-mission-control" {
  endpoint            = "https://homelab.tmc.cloud.vmware.com/" # optionally use TMC_ENDPOINT env var
#  vmw_cloud_api_token = var.vmw_cloud_api_token                # optionally use VMW_CLOUD_API_TOKEN env var

}


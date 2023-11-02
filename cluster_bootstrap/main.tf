
# Create Tanzu Mission Control Tanzu Kubernetes Grid Service workload cluster entry
resource "tanzu-mission-control_cluster" "create_tkgs_workload" {
  management_cluster_name = var.mgt_cluster_name
  provisioner_name        = var.provisioner_name
  name                    = var.cluster_name

  meta {
    labels = var.labels
  }

  spec {
    cluster_group = var.clustergroup // Default: default
    tkg_service_vsphere {
      settings {
        network {
          pods {
            cidr_blocks = [
              "172.20.0.0/16", // Required
            ]
          }
          services {
            cidr_blocks = [
              "10.96.0.0/16", // Required
            ]
          }
        }
        storage {
          classes = [
            "vmfs-san",
          ]
          default_class = "vmfs-san"
        }
      }

      distribution {
        version = var.tkg_version // Required
      }

      topology {
        control_plane {
          class             = var.control_vm_class         // Required
          storage_class     = "vmfs-san" // Required
          high_availability = var.high_availability             // Default: false
          volumes {
            capacity          = "50"
            mount_path        = "/var/lib/etcd"
            name              = "etcd"
            pvc_storage_class = "vmfs-san"
          }
        }
        node_pools {
          spec {
            worker_node_count = var.worker_count // Required
            cloud_label = {
              "env" : "dev"
            }
            node_label = {
              "node" : "worker"
            }
            tkg_service_vsphere {
              class          = var.work_class        // Required
              storage_class  = "vmfs-san" // Required
              volumes {
                capacity          = "100"
                mount_path        = "/var/lib/containerd"
                name              = "containerd"
                pvc_storage_class = "vmfs-san"
              }
            }
          }
          info {
            name = "default" // Required
          }
        }
      }
    }
  }
  ready_wait_timeout = "15m"
}


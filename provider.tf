terraform {
    backend "s3" {
    bucket= "terraform"
    key=  "terraform.tfstate"
    endpoint= "https://dev-affcluster02a-s3.dev.e2open.com"
    access_key     = "GFY7Z63Y5YQGI872WDR7"
    secret_key     = "25HcZ5_XBwcb7BGqx53ODDYuMXcBPe1Fx_gB_9qA"
    region= "us-east-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
 #   use_path_style = true
    force_path_style= true
  }
}



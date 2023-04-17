terraform {
  required_providers{
    google = {
      source = "hashicorp/google"
      version = ">=4.0.0"
    }
  }
}

provider "google" {
  credentials = file("/root/terraformsample/commoncloud-terraform.json")
  project     = var.project_name
  region      = var.region_name
}

#call the module
module "createpsql" {
  source="./psql"
  database_name=psqldb02
  psql_name=psqldbinstance02
}

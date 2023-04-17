  name     = var.database_name
  instance = google_sql_database_instance.instance.name
  deletion_policy = var.psql_del_pol
}
# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
  name             = var.psql_name
  region           = var.region_name
  database_version = var.dbversion
  settings {
    tier = var.dbinstance_tier
  }
    deletion_protection  = var.del_prot
}

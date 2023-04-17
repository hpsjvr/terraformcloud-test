resource "google_sql_database" "database_deletion_policy" {
  name     = var.database_name
  instance = google_sql_database_instance.instance.name
  deletion_policy = var.psql_del_pol
}

resource "google_sql_database_instance" "instance" {
  name             = var.psql_name
  region           = var.region_name
  database_version = var.dbversion
  settings {
    tier = var.dbinstance_tier
  }
    deletion_protection  = var.del_prot
}

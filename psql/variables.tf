###########################
# Sql DB and instance Variables
############################

variable "database_name" {
    type = string
    default = "psqldb01"
}
variable "psql_del_pol" {
    type = string
    default = "ABANDON"
}
variable "psql_name" {
  type = string
  default = "psqldbinstance01"
}
variable "dbversion" {
    type = string
    default = "POSTGRES_14"
}
variable "dbinstance_tier" {
    type = string
    default = "db-g1-small"
}
variable "del_prot" {
    type = bool
    default = "false"
}

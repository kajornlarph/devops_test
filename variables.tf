variable "project_id" {}
variable "region" {}
variable "machine_type" {}

variable "credentials_file" {}
variable "vpc_name" {
  default = "default"
}
variable "subnet_name" {
  default = "gke-subnet"
}
variable "subnet_cidr" {
  default = "10.148.0.0/20"
}
variable "cluster_name" {
  default = "gke-cluster"
}
variable "node_machine_type" {
  default = "e2-medium"
}
variable "node_count" {
  default = 3
}

variable "project_id" {}
variable "region" {}
variable "cluster_name" {}
variable "machine_type" {}

variable "credentials_file" {}
variable "vpc_name" {
  default = "gke-vpc"
}
variable "subnet_name" {
  default = "gke-subnet"
}
variable "subnet_cidr" {
  default = "10.0.0.0/16"
}
variable "cluster_name" {
  default = "my-gke-cluster"
}
variable "node_machine_type" {
  default = "e2-medium"
}
variable "node_count" {
  default = 3
}

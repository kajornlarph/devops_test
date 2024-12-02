provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file("path/to/your/service-account-key.json")
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  node_config {
    machine_type = var.machine_type
  }
}

resource "google_container_cluster" "gke" {
  name     = var.cluster_name
  location = var.region
  network  = google_compute_network.vpc.self_link
  subnetwork = google_compute_subnetwork.subnet.self_link

  initial_node_count = var.node_count

  node_config {
    machine_type = var.node_machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "services"
  }
}
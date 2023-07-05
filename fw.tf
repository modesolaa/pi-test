# allow http traffic
resource "google_compute_firewall" "allow-http" {
  name = "fw-allow-http"
  network = "default"
  target_tags = ["http"] 
  source_tags = ["default"]
  source_ranges = ["0.0.0.0/0"]  
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}
# allow ssh traffic
resource "google_compute_firewall" "allow-ssh" {
  name = "fw-allow-ssh"
  network = "default"
  target_tags = ["ssh"]
  source_tags = ["default"]
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}
# allow jenkins connection
resource "google_compute_firewall" "allow-jenkins" {
  name = "fw-allow-jenkins"
  network = "default"
  target_tags = ["jenkins"]
  source_tags = ["default"]
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }
}


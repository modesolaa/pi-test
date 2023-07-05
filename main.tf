#Jenkins Server
resource "google_compute_instance" "master" {
  boot_disk {
    auto_delete = true
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20230509"
      size  = 10
      type  = "pd-balanced"
    }
   }
  zone = "us-central1-a"
  machine_type = "e2-medium"
  name         = "master"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    subnetwork = "projects/project1-337123/regions/us-central1/subnetworks/default"
  }

  service_account {
    email  = "122803232130-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
metadata_startup_script = "sudo apt-get update; sudo apt install default-jdk; sudo apt install wget; sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key; sudo apt-key add -Copy; sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'; sudo apt update; sudo apt install jenkins; sudo systemctl enable --now jenkins"
}
#Agent1
resource "google_compute_instance" "agent-1" {
  boot_disk {
    auto_delete = true
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20230509"
      size  = 10
      type  = "pd-balanced"
    }
   }
  zone = "us-central1-a"
  machine_type = "e2-medium"
  name         = "agent-1"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    subnetwork = "projects/project1-337123/regions/us-central1/subnetworks/default"
  }

  service_account {
    email  = "122803232130-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential apache2; sudo apt install default-jdk"
}
#Agent2
resource "google_compute_instance" "agent-2" {
  boot_disk {
    auto_delete = true
    initialize_params {
      image = "projects/debian-cloud/global/images/debian-11-bullseye-v20230509"
      size  = 10
      type  = "pd-balanced"
    }
   }
  zone = "us-central1-a"
  machine_type = "e2-medium"
  name         = "agent-2"

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    subnetwork = "projects/project1-337123/regions/us-central1/subnetworks/default"
  }

  service_account {
    email  = "122803232130-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  
  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq build-essential apache2; sudo apt install default-jdk"
}

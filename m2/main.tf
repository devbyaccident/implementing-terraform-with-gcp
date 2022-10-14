resource "google_compute_instance" "this" {
  provider     = google
  name         = "carved-rock-instance"
  machine_type = "e2-medium"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20220920"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Left blank to assign public IP
    }
  }

  metadata = {
    ssh-keys = "${var.username}:${file("~/.ssh/id_rsa.pub")}"
  }

  metadata_startup_script = "sudo apt-get update; echo 'Hello World!' >> /home/${var.username}/startup"
}

resource "google_compute_instance" "beta_this" {
  provider     = google-beta
  name         = "carved-rock-beta-instance"
  machine_type = "e2-medium"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20220920"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Left blank to assign public IP
    }
  }

  metadata = {
    ssh-keys = "${var.username}:${file("~/.ssh/id_rsa.pub")}"
  }

  metadata_startup_script = "sudo apt-get update; echo 'Hello World (Beta)!' >> /home/${var.username}/startup"
}

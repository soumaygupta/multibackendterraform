resource "google_compute_instance" "centos-7" {
  name         = "gcpdeploy"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "centos-7"
    }
  }
  metadata = {
    ssh-keys = "soumay:${file("~/.ssh/id_rsa.pub")}"
  }
 
  network_interface {
    network = "default"
    access_config {}
  }
  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

output "ip" {
  value = "${google_compute_instance.centos-7.network_interface.0.network_ip}"
}

output "ippublic" {
  value = "${google_compute_instance.centos-7.network_interface.0.access_config.0.nat_ip}"
}

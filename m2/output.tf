output "ip" {
  value = google_compute_instance.this.network_interface.0.access_config.0.nat_ip
}
<<<<<<< HEAD

output "beta_ip" {
  value = google_compute_instance.beta_this.network_interface.0.access_config.0.nat_ip
}
=======
>>>>>>> 866340354da49ef18ddc6f73ba38080f51c452a1

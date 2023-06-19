resource "google_compute_instance" "appserver" {
  name = "terraform-a"
  machine_type = "f1-micro"
  tags        = ["test1"]
  

  boot_disk {
   initialize_params {
     image = "debian-cloud/debian-10"
   }
}
 network_interface {
   network = "default-vpc"
}
}


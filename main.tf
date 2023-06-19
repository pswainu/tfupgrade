provider "google" {
  project = "is-cloud-devops-infra-t"
  region = "us-central1"
  zone = "us-central1-a"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
  required_version = ">= 0.13"
}
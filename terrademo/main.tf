terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.14.0"
    }
  }
}

provider "google" {
  credentials = "./keys/my-creds.json"
  project     = "sonorous-antler-412815"
  region      = "us-central1"
}


resource "google_storage_bucket" "demo-bucket" {
  name          = "sonorous-antler-412815-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
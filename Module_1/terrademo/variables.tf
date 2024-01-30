variable "project" {
  description = "Project"
  default     = "sonorous-antler-412815"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}
variable "region" {
  description = "Project Region"
  default     = "us-central1"
}

variable "credentials" {
    description = "Credentials Location"
    default = "./keys/my-creds.json"
}
variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "sonorous-antler-412815-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
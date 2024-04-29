terraform {
  backend "gcs" {
    bucket = "asem_bucket"
    prefix = "terraform/state"
  }
}
module "gke_cluster" {
  source         = "github.com/asemua/tf-google-gke-cluster"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}
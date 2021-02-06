module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project="mlopslabs"
  cluster_name="jx-cluster"
}
terraform{
 backend "gcs" {
  bucket = "mlopslabs-jx-cluster"
  prefix = "terraform/state"
 }
}



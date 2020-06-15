module "jx" {
  source = "jenkins-x/jx/google"
  version = "1.2.5"
  gcp_project = "jx-pluralsight-custom-domain"
  cluster_name = "ps-jx-cd"
  force_destroy = true
  parent_domain = "ps-jx.org"
  tls_email = "certifiable@ps-jx.org"
}

terraform {
  backend "gcs" {
    bucket = "ps-jx-terraform-state-files-2"
    prefix = "terraform/state-domain-tls"
  }
}

provider "google" {
  credentials = var.google_credentials
  project     = var.project_id
  region      = var.region
}

resource "google_cloud_run_service" "my_service" {
  name     = var.service_name
  location = var.region

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_project_iam_member" "run_invoker" {
  project = var.project_id
  role    = "roles/run.invoker"
  member  = "allUsers"
}

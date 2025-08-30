variable "project_id" {
  type        = string
  description = "GCP project ID"
}

variable "region" {
  type        = string
  default     = "asia-south1"
  description = "GCP region"
}

variable "service_name" {
  type        = string
  default     = "cloudrun-app"
  description = "Name of Cloud Run service"
}

variable "image" {
  type        = string
  description = "Docker image to deploy"
}

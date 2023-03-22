variable "project" {
  default = "beatlevic"
}

variable "environment" {
  default = "production"
}

variable "region" {
  default = "eu-west4"
}

variable "zone" {
  default = "a"
}

variable "multi_region" {
  default = "EU"
}

variable "bucket_prefix" {
  default = "beatlevic-production"
}

variable "cluster_name" {
  default = "cluster-1"
}

variable "cluster_description" {
  default = "GKE Cluster"
}

variable "node_pool_count" {
  default = 1
}

variable "min_node_count" {
  default = 1
}

variable "max_node_count" {
  default = 3
}

variable "preemptible" {
  default = false
}

variable "machine_type" {
  default = "n2d-standard-2"
}

variable "buckets" {
  type = set(string)

  default = [
    "beatlevic-production-uploads",
    "beatlevic-production-uploads-backup",
    "beatlevic-production-mongodb-backups",
    "beatlevic-staging-uploads",
  ]
}

variable "master_authorizaed_networks_cidr_blocks" {
  type = list(map(string))
  default = [
    {
      display_name = "All",
      cidr_block = "0.0.0.0/0"
    }
  ]
}

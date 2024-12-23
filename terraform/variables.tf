###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

/* variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
} */

variable "default_zone" {
  type        = map(string)
  default     = {
    a="ru-central1-a",
    b="ru-central1-b",
    d="ru-central1-d"
    }
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

/* variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
} */

variable "default_cidr" {
  type        = map(list(string))
  default     = {
    a=["10.0.1.0/24"],
    b=["10.0.2.0/24"],
    d=["10.0.3.0/24"]
  }
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "names" {
  type = map(string)
  default = {
    0 = "clickhouse",
    1 = "vector",
    2 = "lighthouse"
    }
    description = "map hosts names"
}

variable "image" {
  type = map(string)
  default = {
    ubuntu2004  = "ubuntu-2004-lts",
    ubuntu2204  = "ubuntu-2204-lts",
    ubuntu2404  = "ubuntu-2404-lts",
    debian11    = "debian-11",
    centos7     = "centos-7"
    }
}
variable "username" {
  type = string
  default = "ubuntu"
}
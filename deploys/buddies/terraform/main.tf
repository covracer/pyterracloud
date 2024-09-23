# AUTOGENERATED by helicopyter

terraform {
  required_providers {
    github = {
      version = "6.2.2"
      source  = "integrations/github"
    }
  }
}

provider "github" {
}

resource "github_membership" "christopher_covington" {
  role     = "admin"
  username = "covracer"
}

resource "github_membership" "darren_pham" {
  role     = "admin"
  username = "darpham"
}

resource "github_membership" "duncan_tormey" {
  role     = "admin"
  username = "DuncanTormey"
}

resource "github_membership" "james_braza" {
  role     = "admin"
  username = "jamesbraza"
}

resource "github_membership" "matt_fowler" {
  role     = "admin"
  username = "mattefowler"
}

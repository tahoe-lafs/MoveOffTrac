# There is no state backend for the resources defined in this project
# It is only used to define the basic requirements used by the other
# ones in the parent folder.

# TODO: Assess if we could/should use Terraform Cloud only for this project,
# instead of committing the tfstate file.

# Lets make the local state explicit
terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

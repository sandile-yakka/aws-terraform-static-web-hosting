provider "aws" {
    region           = "af-south-1"
    assume_role {
        session_name = "terraform-operator"
        role_arn     = "arn:aws:iam::516599252282:role/terraform-operator"
    }
}
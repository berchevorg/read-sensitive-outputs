data "terraform_remote_state" "workspace-output" {
  backend = "remote"

  config = {
    organization = "berchevorg"
    workspaces = {
      name = "outputs"
    }
  }
}

output "consume_sensitive_value" {
  value = data.terraform_remote_state.workspace-output.outputs.random_pet_name
}

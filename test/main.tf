module "kontena_cli" {
  source = ".."
}

output "cli" {
  value = {
    current_master = "${module.kontena_cli.current_master}"
    current_token  = "${module.kontena_cli.current_token}"
  }
}

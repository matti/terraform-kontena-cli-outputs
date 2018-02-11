variable "depends_id" {
  default = ""
}

data "external" "kontena" {
  program = ["ruby", "${path.module}/cli.rb"]

  query {
    depends_id = "${var.depends_id}"
  }
}

output "current_master_name" {
  value = "${data.external.kontena.result["current_master_name"]}"
}

output "current_master_address" {
  value = "${data.external.kontena.result["current_master_address"]}"
}

output "current_master_url" {
  value = "${data.external.kontena.result["current_master_url"]}"
}

output "current_token_id" {
  value = "${data.external.kontena.result["current_token_id"]}"
}

output "current_token_type" {
  value = "${data.external.kontena.result["current_token_token_type"]}"
}

output "current_token_scopes" {
  value = "${split(",", data.external.kontena.result["current_token_scopes"])}"
}

output "current_token_user_id" {
  value = "${data.external.kontena.result["current_token_user_id"]}"
}

output "current_token_user_email" {
  value = "${data.external.kontena.result["current_token_user_email"]}"
}

output "current_token_user_name" {
  value = "${data.external.kontena.result["current_token_user_name"]}"
}

output "current_token_server_name" {
  value = "${data.external.kontena.result["current_token_server_name"]}"
}

output "current_token_access_token_last_four" {
  value = "${data.external.kontena.result["current_token_access_token_last_four"]}"
}

output "current_token_refresh_token_last_four" {
  value = "${data.external.kontena.result["current_token_refresh_token_last_four"]}"
}

output "current_token_expires_in" {
  value = "${data.external.kontena.result["current_token_expires_in"]}"
}

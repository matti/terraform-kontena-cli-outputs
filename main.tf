variable "depends_id" {
  default = ""
}

data "external" "kontena" {
  program = ["ruby", "${path.module}/cli.rb"]

  query {
    depends_id = "${var.depends_id}"
  }
}

output "current_master" {
  value = {
    name    = "${data.external.kontena.result["current_master_name"]}"
    address = "${data.external.kontena.result["current_master_address"]}"
    url     = "${data.external.kontena.result["current_master_url"]}"
  }
}

output "current_token" {
  value = {
    id                      = "${data.external.kontena.result["current_token_id"]}"
    token_type              = "${data.external.kontena.result["current_token_token_type"]}"
    scopes                  = "${split(",", data.external.kontena.result["current_token_scopes"])}"
    user_id                 = "${data.external.kontena.result["current_token_user_id"]}"
    user_email              = "${data.external.kontena.result["current_token_user_email"]}"
    user_name               = "${data.external.kontena.result["current_token_user_name"]}"
    server_name             = "${data.external.kontena.result["current_token_server_name"]}"
    access_token_last_four  = "${data.external.kontena.result["current_token_access_token_last_four"]}"
    refresh_token_last_four = "${data.external.kontena.result["current_token_refresh_token_last_four"]}"
    expires_in              = "${data.external.kontena.result["current_token_expires_in"]}"
  }
}

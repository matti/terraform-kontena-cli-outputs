# terraform-kontena-cli-outputs

Provides outputs for the kontena cli (lightweight data source)


    $ terraform apply
      data.external.kontena: Refreshing state...

      Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

      Outputs:

      cli = {
        current_master = map[url:https://dolan-sun-9357.platforms.us-east-1.kontena.cloud name:myorg/mymaster address:dolan-sun-9357.platforms.us-east-1.kontena.cloud]
        current_token = map[server_name:dolan-sun-9357 scopes:[user] id:9e4a289444574707af76583822c10cf8ed9e8626f496003d89a48805b5de2171 user_id:1a8062c310532d000c0e9679 token_type:bearer access_token_last_four:2171 expires_in: user_email:user@example.com user_name:example refresh_token_last_four:]
      }
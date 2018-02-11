# terraform-kontena-cli-outputs

Provides outputs for the kontena cli (lightweight data source)


    $ terraform apply
      data.external.kontena: Refreshing state...

      Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

      Outputs:

      current_master_address = dolan-sun-9357.platforms.us-east-1.kontena.cloud
      current_master_name = myorg/myplatform
      current_master_url = https://dolan-sun-9357.platforms.us-east-1.kontena.cloud
      current_token_access_token_last_four = 2171
      current_token_expires_in =
      current_token_id = 814a289444574707af76583822c10cf8ed9e8626f496003d89a48805b5de2171
      current_token_refresh_token_last_four =
      current_token_scopes = [
          user
      ]
      current_token_server_name = dolan-sun-9357
      current_token_type = bearer
      current_token_user_email = user@example.com
      current_token_user_id = 5a8062c310532d000c0e9621
      current_token_user_name = username

## test

    $ terraform apply
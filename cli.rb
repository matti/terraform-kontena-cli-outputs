require 'json'

params = JSON.parse(STDIN.read)

master_name = `kontena master current --name`.chomp
master_address = `kontena master current --address`.chomp
master_url = `kontena master current --url`.chomp

current_token_id = `kontena master token current --token`.chomp
current_token_output_lines = `kontena master token show #{current_token_id}`.split("\n")

current_token = {}
current_token_output_lines.each do |line|
  matches = line.match(/^[\s]*(\S*)\s:\s(\S*)/)
  key = matches[1]
  value = matches[2] || ""

  current_token[key] = value
end

result = {
  current_master_name: master_name,
  current_master_address: master_address,
  current_master_url: master_url,
  current_token_id: current_token_id,
  current_token_token_type: current_token["token_type"],
  current_token_scopes: current_token["scopes"],
  current_token_user_id: current_token["user_id"],
  current_token_user_email: current_token["user_email"],
  current_token_user_name: current_token["user_name"],
  current_token_server_name: current_token["server_name"],
  current_token_access_token_last_four: current_token["access_token_last_four"],
  current_token_refresh_token_last_four: current_token["refresh_token_last_four"],
  current_token_expires_in: current_token["expires_in"]
}

puts result.to_json

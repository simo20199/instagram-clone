# frozen_string_literal: true

CarrierWave.configure do |config|
  config.permissions = 0666
  config.directory_permissions = 0777
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'KEYID',
    aws_secret_access_key: 'SECRETID',
    region: 'us-east-1'
  }
  config.fog_directory  = 'instagram-clone'
  config.fog_public     = false
end


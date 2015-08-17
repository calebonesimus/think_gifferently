CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIROE5YOWOFH4TG5Q',       # required
    :aws_secret_access_key  => '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',       # required
    :region                 => 's3-us-west-2'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'think-gifferently'                     # required
  # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end

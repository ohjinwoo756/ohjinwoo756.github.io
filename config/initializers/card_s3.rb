CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI5YF3XMG7XL2CGPQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'http://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'likelion-card'                          # required
  config.fog_public     = true                                       # optional, defaults to true
   # optional, defaults to {}
end
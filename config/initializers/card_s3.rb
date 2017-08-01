CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAILJ5Q2Y7R4IOSLAQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    host:                  's3.example.com',             # optional, defaults to nil
    endpoint:              'http://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'like-lion-ssu'                          # required
  config.fog_public     = true                                       # optional, defaults to true
   # optional, defaults to {}
end
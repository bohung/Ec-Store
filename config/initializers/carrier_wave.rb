CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV['S3_Key_ID'],     # S3 key
      aws_secret_access_key: ENV['S3_Key_Secret'], # S3 secret key
      region:                'ap-northeast-1' # S3 bucket 的 Region 位置
    }
    config.fog_directory  = 'bohung-bucket'   # bucket name
  else
    config.storage :file
  end
end

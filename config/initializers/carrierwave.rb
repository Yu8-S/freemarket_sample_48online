require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.secrets.aws_access_key_id,
      aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
      region: 'ap-northeast-1'
  }

  # 公開・非公開の切り替え
  config.fog_public     = true
  # キャッシュの保存期間
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }

  config.fog_directory  = 'mercari-copy'
  config.cache_storage = :fog
end

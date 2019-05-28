CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
      provider: 'AWS',
      AWS_ACCESS_KEY_ID: ENV["S3_ACCESS_KEY"],
      AWS_SECRET_ACCESS_KEY: ENV["S3_SECRET_KEY"],
      region: 'ap-northeast-1'
  }

  # 公開・非公開の切り替え
  config.fog_public     = true
  # キャッシュの保存期間
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }

  config.fog_directory  = 'mercari-copy'
  config.cache_storage = :fog
end

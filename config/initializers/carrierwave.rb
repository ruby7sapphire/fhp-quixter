CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage    = :aws
    config.aws_bucket = ENV["AWS_BUCKET"]
    config.aws_acl    = "public-read"

    config.aws_credentials = {
        access_key_id:     ENV["AWS_ACCESS_KEY"],
        secret_access_key: ENV["AWS_SECRET_KEY"],
        region:            ENV["AWS_REGION"]
    }

    CarrierWave::Uploader::Base.store_dir.prepend('quixter/')
  else
    config.storage = :file
  end
end

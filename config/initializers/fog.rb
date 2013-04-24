CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => "AWS",                        # required
    :aws_access_key_id      => ENV["AWS_ACCESSKEYID"],            # required
    :aws_secret_access_key  => ENV["AWS_SECRETACCESSKEY"],        # required
  }
  config.fog_directory  = "lawyerly"      # required
end
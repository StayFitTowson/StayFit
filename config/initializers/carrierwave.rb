CarrierWave.configure do |config|
  # if Rails.env.development? || Rails.env.test?
  #   config.storage = :file
  # else
    config.storage = :fog
    config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => 'AKIAIZ74J64HQGP2VM3Q', # required
      :aws_secret_access_key  => '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',  # required
      :region                 => 'https://s3-us-west-2.amazonaws.com', # optional, defaults to 'us-east-1'
      :endpoint               => 'https://s3-us-west-2.amazonaws.com'
    }
    config.fog_directory  = 'stayfittowson' # required
    # config.fog_public     = false     
    # config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
    # see https://github.com/jnicklas/carrierwave#using-amazon-s3
    # for more optional configuration
   # end
end
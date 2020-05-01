ActionMailer::Base.add_delivery_method :ses, AWS::SES::Base,
  :access_key_id      => ENV.fetch('SES_ACCESS_KEY_ID') { nil },
  :secret_access_key  => ENV.fetch('SES_SECRET_ACCESS_KEY') { nil },
  :server             => ENV.fetch('SES_ENDPOINT') { nil }

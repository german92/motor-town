Recaptcha.configure do |config|

  if Rails.env.production?
  	config.site_key   = Rails.application.secrets[:RECAPTCHA_SITE_KEY]
  	config.secret_key = Rails.application.secrets[:RECAPTCHA_PRIVATE_KEY]  
  else
  	config.site_key   = ENV['RECAPTCHA_SITE_KEY']
  	config.secret_key = ENV['RECAPTCHA_PRIVATE_KEY']
  end

end

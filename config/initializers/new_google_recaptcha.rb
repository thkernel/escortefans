=begin
if Object.const_defined?('NewGoogleRecaptcha')
  NewGoogleRecaptcha.setup do |config|
    config.site_key   = "6LfZn7AZAAAAAHUru9iaAqtj09vPHyh3LzrFgO9Q"
    config.secret_key = "6LfZn7AZAAAAANXWlZ8Nod9dT3VPnA0HzsX11YRm"
    config.minimum_score = 0.5

    config.site_key  = '6LeXSiwfAAAAAIHBVQQY8bHTPjEIoIDBYt-YtcRg'
  config.secret_key = '6LeXSiwfAAAAADBhCbgTIS9NE2G1bQeP5yQJmxNv'
  config.minimum_score = 0.5

  end
end
=end


Recaptcha.configure do |config|
  config.site_key  = '6LeXSiwfAAAAAIHBVQQY8bHTPjEIoIDBYt-YtcRg'
  config.secret_key = '6LeXSiwfAAAAADBhCbgTIS9NE2G1bQeP5yQJmxNv'
  
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'

  # Uncomment the following lines if you are using the Enterprise API:
  # config.enterprise = true
  # config.enterprise_api_key = 'AIzvFyE3TU-g4K_Kozr9F1smEzZSGBVOfLKyupA'
  # config.enterprise_project_id = 'my-project'
end

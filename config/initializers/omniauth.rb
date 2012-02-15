Rails.application.config.middleware.use OmniAuth::Builder do
  
  # DISCLAIMER: access keys for twitter and github will not work since it was changed
  # you should set properly access key to get it work
  provider :developer unless Rails.env.production?
  provider :twitter, 'eFpoQ1if4PhUdWUm3eGzg', 'lwPIC3WjlgREeuqLPDYGRxCjBCgmY0wdtp16lHA0c'
  provider :open_id, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :github, "d82c0c635a15acd15b81", "9a7b667df3aee327d093b0d6cbad4eb3dbb62d4d"
  
  # obtain your api key here: https://code.google.com/apis/console
  provider :google_oauth2, "xxxxxxxx", "xxxxxx"
end


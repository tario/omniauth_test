Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'oB1haP9UX5Sit6KGrcbHiQ', 'vFjMHnbUfm39TUCktlkbjjodojNZOxYVqWjb9XPDsqQ'
  provider :open_id, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'oB1haP9UX5Sit6KGrcbHiQ', 'vFjMHnbUfm39TUCktlkbjjodojNZOxYVqWjb9XPDsqQ'
  provider :open_id, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
  provider :github, "b85dea79a2f62f45fd60", "60b3f15a195ee2dbe75b33fa78a4f781e4a32a38"
end


web:          bundle exec rails server thin -p $PORT
worker:       bundle exec rake resque:work QUEUE=*
urgentworker: bundle exec rake resque:work QUEUE=urgent
tweetscan:    bundle exec ruby tweetscan.rb
cron:         bundle exec clockwork clock.rb

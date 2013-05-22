source 'https://rubygems.org'
source 'https://gems.gemfury.com/8dezqz7z7HWea9vtaFwg' # thibaud@jilion.com account

ruby '2.0.0'

gem 'bundler'

gem 'rails', '3.2.12' # until 3.2.14 is out!
gem 'sublime_video_layout', '~> 2.0' # hosted on gemfury

# Views
gem 'haml'
gem 'haml-contrib'
gem 'RedCloth'
gem 'turbolinks', github: 'jilion/turbolinks', branch: 'ios_video_issue'
gem 'google-analytics-turbolinks'

# Internals
gem 'mongoid'
gem 'indextank'
gem 'honeybadger'
gem 'oj' # fastest json
gem 'librato-rails', github: 'librato/librato-rails', branch: 'feature/rack_first'
gem 'configurator', github: 'jilion/configurator'
gem 'lograge'
gem 'json'
gem 'net-scp', '1.0.4'
gem 'rack-status'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'asset_sync'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :production do
  gem 'rack-google-analytics'
end

group :staging, :production do
  gem 'unicorn'
  gem 'dalli'
  gem 'rack-cache'
  gem 'rack-ssl-enforcer'
  gem 'newrelic_rpm'
end

group :development, :test do
  gem 'rack-livereload'
  gem 'rack-nocache'
  gem 'quiet_assets'
  gem 'silent-postgres'
end

group :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'database_cleaner'
end

group :tools do
  gem 'powder'
  gem 'pry'

  # Guard
  gem 'terminal-notifier-guard'
  gem 'rb-fsevent'

  gem 'guard-pow'
  gem 'guard-livereload'
  gem 'guard-rspec'
end

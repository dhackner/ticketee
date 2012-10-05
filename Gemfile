source 'http://rubygems.org'

gem 'rails', '3.1.8'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'compass-rails'
  # Must build from github to get the fix to https://github.com/rails/sass-rails/issues/100
  gem 'sass-rails', :git => 'https://github.com/rails/sass-rails.git', :tag=>'3-1-stable'
  gem 'coffee-rails', " >= 3.1.0"
  gem 'dynamic_form'
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test, :development do
  gem 'rspec-rails', '~> 2.5'
  gem 'autotest'
end

group :test do
  gem 'cucumber-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
end

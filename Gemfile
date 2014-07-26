source "https://rubygems.org"

gem "rails", "4.1.1"

# Use PostgreSQL as the database for Active Record
gem "pg", :require => "pg"

# Compressor of JavaScript assets
gem "uglifier", ">= 1.3.0"

# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"

# Use jQuery as the JavaScript libraryq
gem "jquery-rails"

# User authentication
gem "devise", "3.2.4"

gem "omniauth-facebook"
gem "kaminari"
gem "ransack"
gem "dynamic_form"
gem "geocoder"

group :test, :development do
  gem "rspec-rails"
  gem "awesome_print", :require => 'ap'
  gem "annotate"
  gem "bullet"
  gem "better_errors"
end

group :development do
  gem "chronic"
  gem "admin_view"
end

group :test do
  gem "factory_girl_rails"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "selenium-webdriver"
  gem "capybara"
  gem "shoulda"
  gem "email_spec"
end

group :production, :development do
  gem "thin"
  gem 'yaml_db'
end

gem 'puma'

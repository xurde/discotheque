source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem "better_errors"
end

group :test, :development do
  gem 'sqlite3', '~> 1.3.5'
  gem "debugger"
  gem "cane"
end

group :production do
  gem "pg"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

#Aplication gems

gem 'dynamic_form'
gem 'devise', '~> 2.1'
gem 'devise-encryptable'
gem "paperclip", "~> 3.0"

# Testing gems

group :test do
  gem "rspec-rails",      ">= 2.0.0"
  gem 'factory_girl_rails'
  gem 'capybara'
  #gem "autotest"
  #gem "autotest-rails"
end
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'jquery-turbolinks'
gem 'codemirror-rails'
gem "font-awesome-rails", "~> 4.3"
#the Super Simple WYSIWYG Editor on Bootstrap
gem 'summernote-rails'
# add after giving jqery error user_controller and user_mailer
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'rails-ujs', '~> 0.1.0'
# helping you with powerful components to create your forms
gem 'simple_form', '~> 4.1'
#Devise is a flexible authentication solution for Rails based on Warden, is Rack based.
gem 'devise'
#Automatically extract and apply validation rules defined on the server to the client.need jqery-rails
gem 'client_side_validations'
#order matter here simple_form then -> client_side_validation -> client_side_validations-simple_form
gem 'client_side_validations-simple_form'
#Dump (parts) of your database to db/seeds.rb to get a headstart creating a meaningful seeds.rb file
gem 'seed_dump', '~> 3.3', '>= 3.3.1'
#for embed rail in html file its like a shorthand notation alternative of erb
gem 'haml', '~> 5.0.0.beta.2'
# to add bootstrap for frontend
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.7'
group :development do
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
end
group :production do
#postgresql
gem 'pg'
end
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
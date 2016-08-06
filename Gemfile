source 'https://rubygems.org'

# Declare the ruby version to use: http://bundler.io/v1.3/gemfile.html
ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '>= 5.0.6'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '3.0.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.2.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '5.0.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.6.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use Devise for authentication: https://github.com/plataformatec/devise#getting-started
gem 'devise'
    #Updating devise breaks Cucumber tests. Be careful on when to update this.

  # Use FFaker for random seed generation: https://github.com/EmmanuelOga/ffaker
  gem 'ffaker'
  
  gem 'rails_12factor'
  
  gem "codeclimate-test-reporter", group: :test, require: nil

group :development, :test do
  # Use RSpec for testing: https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '3.5.1'
  # Use Factory Girl for Active Record sample instance object creation: https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
  gem 'factory_girl_rails'
  # Use Shoulda Matchers for validation and association testing: https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers'
  gem 'cucumber-rails', '1.4.4', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'pry-byebug'
  gem 'rails-controller-testing'
end

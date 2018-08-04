source 'https://rubygems.org'
# The V8 javascript engine on ruby, maybe not used in backend
gem 'therubyracer'
# As title
gem 'google-api-client'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.0'
# The middleware that handle CORS requests
gem 'rack-cors'

# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
gem 'mysql2', '>=0.4.10'

#for user auth
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"
gem 'omniauth-nctu'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7.0'
# fast_jsonapi
gem 'fast_jsonapi'
# curl http calls binding
gem 'curb'
# File attatchment management
gem "paperclip"
# search
gem 'ransack', git: 'https://github.com/activerecord-hackery/ransack.git', branch: 'master'
# pagination
gem 'kaminari'
#for update course from E3
gem 'whenever' , :require => false
#for chrome extension cross domain support
gem 'rack-jsonp-middleware',
  :require => 'rack/jsonp'
# Facebook API bindings
gem "koala", "~> 1.10.0rc"
# Event trigger IO library in Ruby, maybe used in production?
gem "eventmachine"
# Made DNS resolution in Rails be event based in eventmachine
gem 'em-resolv-replace', :require => false
# For course table share (id obfuscation)
gem "hashids"
# Google Books search API
gem "googlebooks"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  # Security analyzer
  gem 'brakeman', :require => false
  # Linter
  gem 'rails_best_practices', :require => false
  # Generating ERD
  gem "rails-erd"
  # Test framework
	gem "rspec-rails"
  # Used with rspec to do integration tests
  # gem "capybara"
  # Dubugger
	gem "byebug"
end

# puma server, manages thread pool(coroutine?)
group :production do
  gem 'puma'
end

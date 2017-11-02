source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '~> 2.4.1'
gem 'activeadmin'
gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml-rails', '~> 1.0'
gem 'acts_as_shopping_cart'
gem 'jquery-rails'
gem 'devise'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'geocoder'
gem 'faker'
gem 'cancancan'
gem 'simple_form'
gem 'stripe-rails'
gem 'rack-cors', require: 'rack/cors'
gem 'aws-sdk', '~> 2.10', '>= 2.10.27'
gem 'paperclip', '~> 5.0.0'


group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'cucumber-rails', require: false
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'launchy'
  gem 'poltergeist'
  gem 'rack_session_access'
  gem 'stripe-ruby-mock', require: 'stripe_mock'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'erd'
  gem 'rack-mini-profiler'
  gem 'flamegraph'
  gem 'stackprof' # ruby 2.1+ only
  gem 'memory_profiler'
end

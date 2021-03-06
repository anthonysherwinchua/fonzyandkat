source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '0.19.0'
gem 'puma', '~> 3.0'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'slim-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'font-awesome-rails'

# Use Simple form for generating forms
gem 'simple_form'

# Use AdminLTE template for admin section
gem 'adminlte2-rails'

# Use to scrape instagram public contents -- because Instagram don't want us to have their content via their API
gem 'insta_scrape'

# Use sidekiq, redis and sidekiq_cron for scheduled background jobs
gem 'sidekiq'
gem 'sidekiq-cron', '~> 0.4.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', '~> 0.41.2', require: false
  gem 'scss_lint', require: false
  gem 'slim_lint', require: false
end

group :staging do
  gem 'mail_gate'
end

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'webmock'
  gem 'rails-controller-testing'
  gem 'codeclimate-test-reporter', '~> 1.0.0'
end

group :production, :staging do
  gem 'rails_12factor'
end

source "https://rubygems.org"

gem "rails", "~> 7.2.3"
gem "sprockets-rails"
gem "puma", ">= 5.0"

gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "sqlite3", ">= 1.4"
end

group :development do
  gem "web-console"
  gem "bullet"
  gem "letter_opener", "~> 1.10"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "simple_form", "~> 5.4"
gem "sassc-rails", "~> 2.1"
gem "kaminari", "~> 1.2"
gem "devise", "~> 4.9"
gem "pundit", "~> 2.5"
gem "rolify", "~> 6.0"
gem "groupdate", "~> 6.7"

group :production do
  gem "pg", "~> 1.2"
end

gem "sendgrid-ruby"

# frozen_string_literal: true

source "https://rubygems.org"

HANAMI_VERSION = "2.0"

gem "hanami", "~> #{HANAMI_VERSION}"
gem "hanami-router", "~> #{HANAMI_VERSION}"
gem "hanami-controller", "~> #{HANAMI_VERSION}"
gem "hanami-validations", "~> #{HANAMI_VERSION}"
gem "hanami-view", "~> #{HANAMI_VERSION}"

gem "rom", "~> 5.3"
gem "rom-sql", "~> 3.6"
gem "mysql2"

gem "dry-types", "~> 1.0", ">= 1.6.1"
gem "puma"
gem "rake"

gem "yabeda-hanami", git: "https://github.com/gkostin1966/yabeda-hanami", branch: "main"
gem "yabeda-puma-plugin", "~> 0.7"
gem "yabeda-http_requests", "~> 0.2"
gem "yabeda-prometheus", "~> 0.9"

group :development, :test do
  gem "dotenv"
  gem "standardrb"
end

group :cli, :development do
  gem "hanami-reloader", "~> #{HANAMI_VERSION}"
end

group :cli, :development, :test do
  gem "hanami-rspec", "~> #{HANAMI_VERSION}"
end

group :development do
  gem "guard-puma", "~> 0.8"
  gem "hanami-webconsole", "~> #{HANAMI_VERSION}"
end

group :test do
  gem "capybara"
  gem "database_cleaner-sequel"
  gem "rack-test"
end

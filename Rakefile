# frozen_string_literal: true

require "hanami/rake_tasks"
require "rom/sql/rake_task"

task :environment do
  require_relative "config/app"
  require "hanami/prepare"
end

namespace :db do
  task setup: :environment do
    Hanami.app.prepare(:persistence)
    ROM::SQL::RakeSupport.env = Hanami.app["persistence.config"]
  end
end

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "standard/rake"

task default: %i[standard spec]
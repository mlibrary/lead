# frozen_string_literal: true

require "pathname"
SPEC_ROOT = Pathname(__dir__).realpath.freeze

ENV["HANAMI_ENV"] ||= "test"
require "hanami/prepare"

require_relative "support/rspec"
require_relative "support/requests"
require_relative "support/database_cleaner"
require_relative "support/capybara"

if ENV["ROM_DEBUG"]
  Hanami.app["persistence.rom"].gateways[:default].use_logger Logger.new($stderr)
end

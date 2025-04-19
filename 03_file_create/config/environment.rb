# frozen_string_literal: true

require "bundler/setup"
Bundler.require(:default)

Sidekiq.configure_client do |config|
  config.redis = {db: 1}
end

Sidekiq.configure_server do |config|
  config.redis = {db: 1}
end

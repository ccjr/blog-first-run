require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Auto-require default libraries and those for the current Rails environment.
Bundler.require :default, Rails.env

module Blog
  class Application < Rails::Application
    config.active_record.observers = :comment_observer
    #config.filter_parameters << :password
  end
end

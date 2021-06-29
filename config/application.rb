require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapps
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    ActionMailer::Base.smtp_settings = {
      :address => 'smtp.gmail.com',
      :domain => 'mail.goggle.com',
      :port => 587,
      :user_name => "mdshahidkhan524@gmail.com",
      :password =>  "9009923218",
      :authentication => 'login',
      :enabled_starttls_auto => true 
    }
  end
end

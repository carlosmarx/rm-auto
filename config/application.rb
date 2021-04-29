require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GamaSystem
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

    # Don't generate system test files.
    config.generators.system_tests = nil

    config.time_zone = 'America/Sao_Paulo'

    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = %i[pt-BR en]
    config.i18n.default_locale = :'pt-BR'
    config.i18n.fallbacks = true

    config.i18n.load_path += Dir["#{Rails.root}/config/locales/**/*.{rb,yml}"]
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.autoload_paths << Rails.root.join('config', 'routes')
    config.autoload_paths += Dir["#{config.root}/app/serializers/**/"]
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
    config.autoload_paths += Dir["#{config.root}/services/**/"]

    config.beginning_of_week = :sunday

    # config.active_record.time_zone_aware_types = %i[datetime time]

    config.active_job.queue_adapter = :sidekiq

    ## SETTING GENERATORS
    config.generators do |g|
      g.stylesheets = false
      g.javascripts = false
      g.helper      = false
      g.assets      = false
      g.test_framework :rspec,
                       view_specs: false,
                       routing_specs: false,
                       controller_specs: false
    end
  end
end

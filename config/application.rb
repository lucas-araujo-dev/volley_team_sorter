require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module VolleyTeamSorter
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.

    # Timezone and locale configuration
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = 'pt-BR'

    # Rails generate files
    config.generators do |g|
      g.test_framework :rspec
      g.helper false
      g.routing_specs false
      g.system_tests false
      g.view_specs false
    end
  end
end

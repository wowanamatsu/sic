require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SIC
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.


    #to skip assets, scaffolds.css, test framework, helpers, view
		config.generators do |g|
		  #g.template_engine nil #to skip views
		  g.test_framework  nil #to skip test framework
		  g.assets  false
		  g.helper false
		  g.stylesheets false
		end
  end
end

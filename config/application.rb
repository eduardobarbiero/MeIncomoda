require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MeIncomoda
  class Application < Rails::Application
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.active_record.raise_in_transactional_callbacks = true
    config.i18n.default_locale = 'br'
    config.api_only = false
    config.time_zone = 'Brasilia'
    config.active_record.default_timezone = :local
    config.encoding = "utf-8"
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.precompile += %w( app.css )
    config.assets.precompile += %w( infobox.js )
    config.assets.precompile += %w( app.js )
    config.secret_key_base = "7824cf44c15eea99c1f3d6832ddf4d01e92e982bcdddf894ad4ba429ea310eda4de816223cd74d4fd330c4ad5d5bbc6898e1e18cdfd31039dbc60355186fce16"
  end
end

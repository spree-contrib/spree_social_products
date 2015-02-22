module SpreeSocialProducts
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_social_products'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer 'spree.social_products.environment', before: :load_config_initializers do
      Spree::Social::Config = Spree::SocialSetting.new
    end

    def self.activate
      Dir.glob("#{config.root}/app/**/*_decorator*.rb") do |klass|
        Rails.configuration.cache_classes ? require(klass) : load(klass)
      end
    end

    config.to_prepare(&method(:activate).to_proc)
  end
end

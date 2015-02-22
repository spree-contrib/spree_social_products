module Spree
  module Admin
    class SocialSettingsController < ResourceController
      def update
        settings = Spree::SocialSetting.new
        preferences = params && params.key?(:preferences) ? params.delete(:preferences) : params
        preferences.each do |name, value|
          next unless settings.has_preference? name.to_param
          settings[name] = value
        end
        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:settings, scope: :social))
        redirect_to edit_admin_social_settings_path
      end
    end
  end
end

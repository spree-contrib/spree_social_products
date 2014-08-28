module Spree
  module Admin
    class SocialController < BaseController
      def edit
      end

      def update
        params[:social].each do |provider, value|
          if value == '1'
            Spree::Config["#{provider}_button"] = true
          else
            Spree::Config["#{provider}_button"] = false
          end
        end

        if params[:social][:facebook]
          Spree::Config.facebook_app_id          = params[:facebook_options][:facebook_id]
          Spree::Config.facebook_layout          = params[:facebook_options][:facebook_layout]
          Spree::Config.facebook_show_faces      = params[:facebook_options][:facebook_show_faces]
          Spree::Config.facebook_verb_to_display = params[:facebook_options][:facebook_verb_to_display]
          Spree::Config.facebook_color_scheme    = params[:facebook_options][:facebook_color_scheme]
          Spree::Config.facebook_send_button     = params[:facebook_options][:facebook_send_button]
    		end

        redirect_to edit_admin_social_path, notice: Spree.t(:social_sharing_settings_updated)
      end
    end
  end
end

module Spree
  module Admin
    class SocialController < Spree::Admin::BaseController
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

        redirect_to main_app.edit_spree_admin_social_path, :notice => "Sharing settings have been successfully updated."
      end
    end
  end
end

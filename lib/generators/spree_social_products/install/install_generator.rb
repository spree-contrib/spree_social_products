module SpreeSocialProducts
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'app/assets/javascripts/store/all.js', "//= require store/spree_social_products\n"
        append_file 'app/assets/javascripts/admin/all.js', "//= require admin/spree_social_products\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/store/all.css', " *= require store/spree_social_products\n", :before => /\*\//, :verbose => true
        inject_into_file 'app/assets/stylesheets/admin/all.css', " *= require admin/spree_social_products\n", :before => /\*\//, :verbose => true
      end
    end
  end
end

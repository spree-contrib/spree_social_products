Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "add_social_products_to_configurations_menu",
                     :insert_after => "[data-hook='admin_configurations_menu']",
                     :partial => "spree/admin/shared/configurations_menu_social_products",
                     :disabled => false)

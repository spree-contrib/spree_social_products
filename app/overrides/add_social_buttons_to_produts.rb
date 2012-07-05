Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_social_buttons_to_products_show',
                     :replace => "[data-hook='product_properties']",
                     :partial => 'spree/shared/social_buttons')

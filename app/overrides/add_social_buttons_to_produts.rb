Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_social_buttons_to_products_show',
                     :insert_after => "[data-hook='product_properties']",
                     :partial => 'spree/shared/social_buttons')

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_configuration_menu',
  name: 'add_social_products_to_configurations_menu',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  partial: 'spree/admin/shared/configurations_menu_social_products'
)

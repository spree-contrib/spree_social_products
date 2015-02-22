require 'spree_core'
require 'spree_social_products/engine'
require 'spree_social_products/version'
require 'coffee_script'

module Spree
  module Social
    module_function

    def config(*)
      yield(Spree::Social::Config)
    end
  end
end

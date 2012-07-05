module Spree
  module SocialHelper
    def pin_it_button(product)
      return if product.images.empty?

      url = escape spree.product_url(product)
      media = escape absolute_image_url(product.images.first.attachment.url)
      description = escape product.name

      link_to("Pin It",
              "http://pinterest.com/pin/create/button/?url=#{url}&media=#{media}&description=#{description}",
              :class => "pin-it-button",
              "count-layout" => "none").html_safe
    end

    private

    def escape(string)
      URI.escape string, /[^#{URI::PATTERN::UNRESERVED}]/
    end

    def absolute_image_url(url)
      return url if url.starts_with? "http"
      request.protocol + request.host + url
    end
  end
end

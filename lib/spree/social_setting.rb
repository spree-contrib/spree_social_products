module Spree
  class SocialSetting < Preferences::Configuration
    preference :twitter_button,           :boolean, default: true
    preference :google_plus_button,       :boolean, default: true
    preference :tumblr_button,            :boolean, default: false
    preference :pinterest_button,         :boolean, default: false
    preference :facebook_button,          :boolean, default: true
    preference :delicious_button,         :boolean, default: false
    preference :reddit_button,            :boolean, default: false
    preference :facebook_app_id,          :string
    preference :facebook_layout,          :string,  default: 'standard'
    preference :facebook_show_faces,      :boolean, default: false
    preference :facebook_verb_to_display, :string,  default: 'like'
    preference :facebook_color_scheme,    :string,  default: 'light'
    preference :facebook_send_button,     :boolean, default: false
    preference :twitter_id,               :string

    def facebook_layouts
      %w(standard button_count box_count button)
    end

    def facebook_verbs
      %w(like recommend)
    end

    def facebook_color_schemes
      %w(light dark)
    end

    def social_services
      %w(twitter facebook pinterest google_plus delicious reddit tumblr)
    end
  end
end

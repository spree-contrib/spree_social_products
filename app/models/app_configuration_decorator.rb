Spree::AppConfiguration.class_eval do
  # Social Sharing Preferences
  preference :twitter_button, :boolean, default: true
  preference :gplus_button, :boolean, default: true
  preference :tumblr_button, :boolean, default: false
  preference :pinterest_button, :boolean, default: false
  preference :facebook_button, :boolean, default: true
  preference :delicious_button, :boolean, default: false
  preference :reddit_button, :boolean, default: false

  preference :facebook_app_id, :string
  preference :facebook_layout, :string, default: 'standard'
  preference :facebook_show_faces, :boolean, default: false
  preference :facebook_verb_to_display, :string, default: 'like'
  preference :facebook_color_scheme, :string, default: 'light'
  preference :facebook_send_button, :boolean, default: false
end

Spree::AppConfiguration.class_eval do
  # Social Sharing Preferences
  preference :twitter_button, :boolean, :default => true
  preference :gplus_button, :boolean, :default => true
  preference :tumblr_button, :boolean, :default => false
  preference :pinterest_button, :boolean, :default => false
  preference :facebook_button, :boolean, :default => true
  preference :delicious_button, :boolean, :default => false
  preference :reddit_button, :boolean, :default => false
end

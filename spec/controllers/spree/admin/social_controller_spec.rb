RSpec.describe Spree::Admin::SocialController, type: :controller do
  stub_authorization!

  skip '#edit'
  skip '#update'
end

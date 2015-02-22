RSpec.describe Spree::SocialSetting do
  subject { described_class.new }

  context '.facebook_layouts' do
    it 'has a list of layouts' do
      expect(subject.facebook_layouts).to be_a Array
      expect(subject.facebook_layouts).to match_array %w(standard button_count box_count button)
    end
  end

  context '.facebook_verbs' do
    it 'has a list of verbs' do
      expect(subject.facebook_verbs).to be_a Array
      expect(subject.facebook_verbs).to match_array %w(like recommend)
    end
  end

  context '.facebook_color_schemes' do
    it 'has a list of color schemes' do
      expect(subject.facebook_color_schemes).to be_a Array
      expect(subject.facebook_color_schemes).to match_array %w(light dark)
    end
  end

  context '.social_services' do
    it 'has a list of services' do
      expect(subject.social_services).to be_a Array
      expect(subject.social_services).to match_array %w(twitter facebook pinterest google_plus delicious reddit tumblr)
    end
  end
end

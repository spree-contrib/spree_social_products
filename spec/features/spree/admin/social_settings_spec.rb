RSpec.feature 'Settings for Social Sharing', :js do
  stub_authorization!

  scenario 'can update settings' do
    visit spree.edit_admin_social_settings_path

    # Show all Facebook options.
    check 'facebook_button'

    uncheck 'twitter_button'
    uncheck 'google_plus_button'
    check 'tumblr_button'
    check 'pinterest_button'
    check 'delicious_button'
    check 'reddit_button'
    select2 'button_count', from: 'Button Type'
    check 'facebook_show_faces'
    select2 'recommend', from: 'Verb to Display'
    select2 'dark', from: 'Color Scheme'
    check 'facebook_send_button'

    click_button 'Update'

    setting = Spree::SocialSetting.new

    expect(setting.preferred_facebook_button).to be(true)

    expect(setting.preferred_twitter_button).to be(false)
    expect(setting.preferred_google_plus_button).to be(false)
    expect(setting.preferred_tumblr_button).to be(true)
    expect(setting.preferred_pinterest_button).to be(true)
    expect(setting.preferred_delicious_button).to be(true)
    expect(setting.preferred_reddit_button).to be(true)
    expect(setting.preferred_facebook_layout).to eq 'button_count'
    expect(setting.preferred_facebook_show_faces).to be(true)
    expect(setting.preferred_facebook_verb_to_display).to eq 'recommend'
    expect(setting.preferred_facebook_color_scheme).to eq 'dark'
    expect(setting.preferred_facebook_send_button).to be(true)
  end
end

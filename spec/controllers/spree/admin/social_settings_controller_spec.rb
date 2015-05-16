RSpec.describe Spree::Admin::SocialSettingsController, type: :controller do
  stub_authorization!

  context '#update' do
    it 'redirects to social settings page' do
      spree_put :update, preferences: { twitter_button: false }
      expect(response).to redirect_to spree.edit_admin_social_settings_path
    end

    context 'For parameters:
            twitter_button: false
            google_plus_button: false
            tumblr_button: true
            pinterest_button: true
            facebook_button: false
            delicious_button: true
            reddit_button: true
            facebook_app_id
            facebook_layout: button_count
            facebook_show_faces: true
            facebook_verb_to_display: recommend
            facebook_color_scheme: dark
            facebook_send_button: false
            twitter_id' do
      subject { Spree::Social::Config }

      it 'sets twitter_button to false' do
        spree_put :update, preferences: { twitter_button: false }
        expect(subject.preferred_twitter_button).to be(false)
      end

      it 'sets google_plus_button to false' do
        spree_put :update, preferences: { google_plus_button: false }
        expect(subject.preferred_google_plus_button).to be(false)
      end

      it 'sets tumblr_button to true' do
        spree_put :update, preferences: { tumblr_button: true }
        expect(subject.preferred_tumblr_button).to be(true)
      end

      it 'sets pinterest_button to true' do
        spree_put :update, preferences: { pinterest_button: true }
        expect(subject.preferred_pinterest_button).to be(true)
      end

      it 'sets facebook_button to false' do
        spree_put :update, preferences: { facebook_button: false }
        expect(subject.preferred_facebook_button).to be(false)
      end

      it 'sets delicious_button to true' do
        spree_put :update, preferences: { delicious_button: true }
        expect(subject.preferred_delicious_button).to be(true)
      end

      it 'sets reddit_button to true' do
        spree_put :update, preferences: { reddit_button: true }
        expect(subject.preferred_reddit_button).to be(true)
      end

      it 'sets facebook_app_id to "123"' do
        spree_put :update, preferences: { facebook_app_id: '123' }
        expect(subject.preferred_facebook_app_id).to eq('123')
      end

      it 'sets facebook_layout to "button_count"' do
        spree_put :update, preferences: { facebook_layout: 'button_count' }
        expect(subject.preferred_facebook_layout).to eq('button_count')
      end

      it 'sets facebook_show_faces to true' do
        spree_put :update, preferences: { facebook_show_faces: true }
        expect(subject.preferred_facebook_show_faces).to be(true)
      end

      it 'sets facebook_verb_to_display to "recommend"' do
        spree_put :update, preferences: { facebook_verb_to_display: 'recommend' }
        expect(subject.preferred_facebook_verb_to_display).to eq('recommend')
      end

      it 'sets facebook_color_scheme to "dark"' do
        spree_put :update, preferences: { facebook_color_scheme: 'dark' }
        expect(subject.preferred_facebook_color_scheme).to eq('dark')
      end

      it 'sets facebook_send_button to false' do
        spree_put :update, preferences: { facebook_send_button: false }
        expect(subject.preferred_facebook_send_button).to be(false)
      end

      it 'sets twitter_id to "123"' do
        spree_put :update, preferences: { twitter_id: '123' }
        expect(subject.preferred_twitter_id).to eq('123')
      end
    end
  end

  context '#edit' do
    it 'renders the edit template' do
      spree_get :edit
      expect(response).to render_template(:edit)
    end
  end
end

Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :social_settings, only: [:edit, :update]
  end
end

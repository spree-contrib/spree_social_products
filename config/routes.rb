Spree::Core::Engine.add_routes do
  namespace :admin do
    resource :social, :only => [:edit, :update], :controller => "social"
  end
end

Spree::Core::Engine.routes.append do
  namespace :admin do
    resource :social, :only => [:edit, :update], :controller => "social"
  end
end

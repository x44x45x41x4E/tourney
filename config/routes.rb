BaseApp::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "pages/index"

  get "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  root :to => "pages#index"

  match 'users/dashboard', :to => 'user#index', :via => [:get], :as => :my_dashboard
  match 'users/:id', :to => 'user#members_dashboard', :via => [:get], :as => :users_dashboard

end

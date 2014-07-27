BaseApp::Application.routes.draw do

  resources :messagers

  root :to => "pages#index"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",
  										:registrations => "registrations" }


  get "pages/index"

  get "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  resources :tourneys
  resources :tourney_comments

  match 'users/dashboard', :to => 'user#index', :via => [:get], :as => :my_dashboard
  match 'users/:id', :to => 'user#members_dashboard', :via => [:get], :as => :users_dashboard

  match '/tourneys/:id/rsvp', :to => 'tourneys#rsvp', :via => [:post], :as => :tourneys_rsvp
end

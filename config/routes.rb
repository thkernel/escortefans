Rails.application.routes.draw do
  resources :service_user_items
  resources :language_items
  resources :service_users
  
  resources :working_hours
  resources :escort_categories
  resources :physical_appearances
  resources :languages
  resources :social_links
  resources :locations
  
  
  resources :services

  get "physical-appearance/:uid" => "physical_appearances#physical_appearance", as: :user_physical_appearance
  get "location/:uid" => "locations#location", as: :user_location
  get "language/:uid" => "languages#language", as: :user_language
  get "service/:uid" => "service_users#service_user", as: :user_service
  
  get 'cgu' => "pages#cgu", as: :cgu
  get 'cookies' => "pages#cookies", as: :cookies
  get 'advertise' => "pages#advertise", as: :advertise
  get 'send/flirt/request/:slug' =>  "flirts#send_flirt", as: :send_new_flirt
  get 'accept/flirt/request/:identifier' =>  "flirts#accept_flirt", as: :accept_flirt
  get 'remove/flirt/request/:identifier' =>  "flirts#remove_flirt", as: :remove_flirt
  get 'add/favoris/request/:slug' =>  "favoris#add_to_favoris", as: :add_to_favoris
  get 'remove/favoris/request/:identifier' =>  "favoris#remove_to_favoris", as: :remove_to_favoris

  #get 'policy'
  resources :messages
  resources :conversations
  # Default routes.
  #root 'home#index'

  #get 'home' => 'profiles#index', as: :profile
  get 'home' => 'profiles#index', as: :home
  get 'feeds' => 'feeds#index', as: :feeds


  # For profiles resources.
  
  get "/me/:uid/presentation" => "profiles#profile_presentation", as: :get_profile_presentation # After i would replace :login by slug
  #post "/me/:slug/presentation" => "profiles#update_profile_presentation", as: :post_profile_presentation # After i would replace :login by slug
  patch "/me/:uid/presentation" => "profiles#update_profile_presentation", as: :update_profile_presentation # After i would replace :login by slug
  
  get "/me/:uid/informations" => "profiles#profile_informations", as: :get_profile_informations # After i would replace :login by slug
  patch "/me/:uid/informations" => "profiles#update_profile_informations", as: :update_profile_informations # After i would replace :login by slug
  get "/me/:uid/change-profile-avatar" => "profiles#change_profile_avatar", as: :change_profile_avatar # After i would replace :login by slug
  patch "/me/:uid/update-profile-avatar" => "profiles#update_profile_avatar", as: :update_profile_avatar # After i would replace :login by slug

  #get "update/me/:slug" => "profiles#show_his_profile", as: :show_my_profile # After i would replace :login by slug
  get "/me/:uid" => "profiles#show", as: :show_my_profile # After i would replace :login by slug
  get "/profile/:uid" => "profiles#show", as: :show_his_profile # After i would replace :login by slug
 # get "update/profile/:slug" => "profiles#show_his_profile", as: :show_his_profile # After i would replace :login by slug

  get "message/new/:recipient_id/" => "messages#new", as: :send_new_message
  get "messages/:identifier/:uid/" => "messages#show", as: :show_messages
  post "message/create/:recipient_id/" => "messages#create", as: :create_message
  
  
  devise_scope :user do
    authenticated :user do
      root 'feeds#index', as: :authenticated_root
    end

    unauthenticated do
      root 'users/registrations#new', as: :unauthenticated_root
    end
  end

  #devise_for :users

  devise_for :users, path: '', controllers: { 
            registrations: "users/registrations",
            confirmations: 'users/confirmations',
            passwords: "users/passwords",
            sessions: "users/sessions"
            
        }, 
        path_names: {
            sign_in: 'login', 
            sign_out: 'logout', 
            password: 'secret', 
            confirmation: 'verification', 
            unlock: 'unblock', 
            registration: 'signup', 
            sign_up: '' ,
            omniauth_callbacks: 'users/omniauth'
        }



      # Dynamic error pages
      get "/404", to: "errors#not_found"
      get "/422", to: "errors#unacceptable"
      get "/500", to: "errors#internal_error"

  
end

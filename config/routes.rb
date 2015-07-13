Rails.application.routes.draw do
  resources :users do
    resources :posts
  end

  #resources :users
  #resources :posts
  #get 'users/:id/posts' => 'users#posts', :as => :user_posts
  
  match "impressum", to: "static_pages#impressum", via: :get
  root "posts#index"
end

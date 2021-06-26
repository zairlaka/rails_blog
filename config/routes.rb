Rails.application.routes.draw do
  resources :categories
  Rails.application.routes.default_url_options[:host] = 'https://rails-zair-blog.herokuapp.com'
  # devise_for :users do
  #   member do
  #     get :confirm_email
  #   end
  # end


  get '/users', to: 'users#index'
  get '/user/:id', to: 'users#show', :as => 'user_profile'
  resources :users,only: [:index] do
    member do
      resources :followings,only: [:create, :destroy]
    end
  end
  
  devise_for :users

  resources :posts do
    resources :comments #nested thing
    resources :likes
    get 'print_pdf', on: :member
  end

  resources :admins, shallow: true do
    collection do
      get :all_users
      get 'dashboard', to: 'admins#dashboard', :as => 'dash'# , on: :collection
    end
  end

  resources :tags , except: [:show]
  # get 'tags', to: 'tags#index'
  # get 'tags/:id/edit/', to: 'tags#edit', as: 'tag_edit'
  # get 'tags/new'
  # get 'tags/:id/delete', to: 'tags#delete'
  # this will create a crud function for post
  # you can check "rails routes" after or before it
  # add this line to link tags to posts with the respective tag
  #
  get '/search' => 'pages#search', :as => 'search_page'
  # get '/search', to: 'pages#search'
  get 'tags/:tag', to: 'posts#index', as: :thistag
  root "posts#index"


end

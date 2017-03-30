Rails.application.routes.draw do
  devise_for :users
  get 'user_comment/new'

  get 'articles/index'

  get 'welcome/index'

  resources :articles do
  	resources :comments
  end

  root 'welcome#index'
  resources :user_comment

  get '/lorem1' => 'welcome#lorem1'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

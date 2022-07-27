Rails.application.routes.draw do
  root "circles#index"
  devise_for :users, :controllers => {
  :registrations => 'users/registrations',
  :sessions => 'users/sessions'   
} 
   
  resources :circles do
    resources :circle_blogs
    resources :applies
  end
  get "circles/:id/applies/new", to:"applies#new"
  post "circles/:id/applies", to:"applies#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end

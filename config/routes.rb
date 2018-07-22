Rails.application.routes.draw do
  resources :videos
  root 'home#index'
  get 'list' => 'home#list'
  get 'downloaded' => 'home#downloaded'
  post 'download' => 'home#index'
  get 'download/:id' => 'home#download', :as => 'downloadd' 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

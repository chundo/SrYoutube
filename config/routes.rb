Rails.application.routes.draw do
  resources :videos
  get 'home/index'
  get 'home/list'
  get 'home/downloaded'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

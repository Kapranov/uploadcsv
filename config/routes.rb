Rails.application.routes.draw do

  get 'regions/index'

  get 'regions/import'

  resources :regions do
    collection { post :import }
  end

  root to: "regions#index"
end

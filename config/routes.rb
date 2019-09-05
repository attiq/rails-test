Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :lists do
    scope module: :lists do
      resources :tasks
    end
  end

  root to: 'lists#index'
end

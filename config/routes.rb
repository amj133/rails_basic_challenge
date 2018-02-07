Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, shallow: true do
    resources :addresses, only: [:new, :create]
  end

  resources :courses, only: [:show]
end

Rails.application.routes.draw do
  resources :genres, only: [:index, :new, :create, :destroy] do 

    resources :books, only:[:new, :create, :edit, :update, :destroy, :index, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

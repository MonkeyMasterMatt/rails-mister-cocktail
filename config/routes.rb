Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end

  # resources :ingredients do
  #   resources :doses
  # end

end




# resources :users, concerns: :administratable
# resources :calendars, concerns: :administratable





  # concern :collective do
  #   resources :doses
  # end

  # resources :cocktails, concerns: :collective
  # resources :ingredients, concerns: :collective

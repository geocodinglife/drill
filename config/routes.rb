Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  resources :items do
    member do
      patch :complete
    end
  end
end

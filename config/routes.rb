Rails.application.routes.draw do
  get 'welcome/index'
  resources :journals do
    resources :pages
  end

  root 'welcome#index'
end
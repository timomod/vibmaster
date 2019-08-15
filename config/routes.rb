Rails.application.routes.draw do
  get 'articles/home'
  get 'articles/press'
  get 'articles/casestudies'
  get 'articles/science'
  get 'articles/standards_glossary'
  get 'articles/factsheets'
  get 'articles/manuals'
  devise_for :users
  root to: 'pages#home'

  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

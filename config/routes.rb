Rails.application.routes.draw do
  get 'tags/new'
  get 'tags/create'
  get 'tags/destroy'
  get 'products', to: 'pages#products'
  get 'products/portable-series', to: 'pages#portable', as: 'portable_series'
  get 'products/research-and-development-series', to: 'pages#rd', as: 'rd_series'


  get 'knowledge-center', to: 'articles#home', as: 'knowledge_center'
  get 'knowledge-center/articles', to: 'articles#press', as: 'press'
  get 'knowledge-center/case-studies', to: 'articles#casestudies', as: 'casestudies'
  get 'knowledge-center/science', to: 'articles#science', as: 'science'
  get 'knowledge-center/standards-and-glossary', to: 'articles#standards_glossary', as: 'glossary'
  get 'knowledge-center/factsheets', to: 'articles#factsheets', as: 'factsheets'
  get 'knowledge-center/manuals', to: 'articles#manuals', as: 'manuals'
  devise_for :users

  root to: 'pages#home'

  resources :pages

  resources :articles

  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

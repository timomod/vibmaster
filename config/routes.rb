Rails.application.routes.draw do
  get 'products', to: 'pages#products'
  get 'products/j121-j160', to: 'pages#j121', as: 'portable_series'
  get 'products/j600-j900', to: 'pages#j900', as: 'rd_series'


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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

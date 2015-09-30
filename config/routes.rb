Rails.application.routes.draw do
  get 'welcome/index'

   get "welcome/index"

   root to: 'welcome#index'
   resources :messages
 end
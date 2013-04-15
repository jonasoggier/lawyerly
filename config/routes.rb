Lawyerly::Application.routes.draw do
  
  root :to => 'home#index'  
  
  resources :users
  resource :session, :only => [:new, :create, :destroy]
  
 
end

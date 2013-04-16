Lawyerly::Application.routes.draw do
  
  root :to => 'home#index'  
  
  resources :users # exclude index?
  resource :session, :only => [:create, :destroy]
  
 
end

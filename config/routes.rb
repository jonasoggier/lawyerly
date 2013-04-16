Lawyerly::Application.routes.draw do
  
  root :to => 'home#index'  
    
  resource :session, :only => [:create, :destroy]

  resources :users do  # exclude index?
  	resources :posts
  end
   
end

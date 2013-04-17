Lawyerly::Application.routes.draw do

  root :to => 'home#index'  
    
  resource :session, :only => [:create, :destroy]

  resources :users do  # exclude index?
  	resources :posts do # TODO exclude unneeded actions!
  		resources :comments # TODO exclude unneeded actions!
  	end
  end

  resources :relationships, :only => [:create, :destroy]
   
end

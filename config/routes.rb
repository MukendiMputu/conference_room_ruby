Rails.application.routes.draw do
  # Default route 
  #get ':controller(/:action(/:id))'
  
  root 'welcome#index'
  
  get 'welcome/index'
  #get 'welcome/index' # match "welcome/index", :to => "welcome#index", :via => :get
  
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "articles#index"
  # two get calls below replaced by resource
  # Resources map all conventional routes for a collection of resources (all CRUD functionality)
  # get "/articles", to: "articles#index" #routes get request of /articles to articles index controller
  # get "/articles/:id", to: "articles#show"
  resources :articles do 
    resources :comments #nested inside of articles resources to capture hierarchical relationship
  end
end

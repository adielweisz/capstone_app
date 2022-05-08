Rails.application.routes.draw do
  Rails.application.routes.draw do
    #Forms 
    get "/forms" => "forms#index"
    post "/forms" => "forms#create"
    get "/forms/:id" => "forms#show"
    patch "/forms/:id" => "forms#update"
    delete "/forms/:id" => "forms#destroy"

    #Products
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    #Users
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
  end
end

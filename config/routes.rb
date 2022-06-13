Rails.application.routes.draw do
  resources :responses
  Rails.application.routes.draw do
  resources :responses
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

    #Key_words
    get "/key_words" => "key_words#index"
    post "/key_words" => "key_words#create"
    get "/key_words/:id" => "key_words#show"
    patch "/key_words/:id" => "key_words#update"
    delete "/key_words/:id" => "key_words#destroy"

     #Answers
     get "/answers" => "answers#index"
     post "/answers" => "answers#create"
     get "/answers/:id" => "answers#show"
     patch "/answers/:id" => "answers#update"
     delete "/answers/:id" => "answers#destroy"

     #User_Answers
     get "/users_answers" => "users_answers#index"
     post "/users_answers" => "users_answers#create"
     get "/users_answers/:id" => "users_answers#show"
     patch "/users_answers/:id" => "users_answers#update"
     delete "/users_answers/:id" => "users_answers#destroy"


    #Questions
    get "/questions" => "questions#index"
    post "/questions" => "questions#create"
    get "/questions/:id" => "questions#show"
    patch "/questions/:id" => "questions#update"
    delete "/questions/:id" => "questions#destroy"
  end
 
  #Makeup_API
  get "/makeup" => "makeup#index"
end

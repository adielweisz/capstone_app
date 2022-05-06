Rails.application.routes.draw do
  Rails.application.routes.draw do
    get "/forms" => "forms#index"
    post "/forms" => "forms#create"
    get "/forms/:id" => "forms#show"
    patch "/forms/:id" => "forms#update"
    delete "/forms/:id" => "forms#destroy"
  end
end

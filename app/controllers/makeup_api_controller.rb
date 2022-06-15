class MakeupApiController < ApplicationController
def index
   makeup = HTTP.get("http://makeup-api.herokuapp.com/api/v1/products.json")
  render json: makeup.parse(:json)
end 
end

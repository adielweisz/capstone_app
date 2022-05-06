class ProductsController < ApplicationController
    def index
      products = Product.all
      render json: products.as_json
    end
  
    def create
      product = Product.new(
        name: params[:name],
        brand: params[:brand],
        description: params[:description],
        available_at: params[:available_at],
        department: params[:department],
        catagory: params[:catagory],
        sub_catagory: params[:sub_catagory],
        key_word: params [:key_word],
        tutorial_id: params [:tutorial_id],        
      )
      product.save
      render json: product.as_json
    end
  
    def show
      product = Product.find_by(id: params[:id])
      render json: product.as_json
    end
  
    def update
      product = Product.find_by(id: params[:id])
      product.name = params[:name] || product.name
      product.brand = params[:brand] || product.brand
      product.description = params[:description] || product.description
      product.available_at = params[:available_at] || product.available_at
      product.brand = params[:brand] || product.brand
      product.catagory = params[:catagory] || product.catagory
      product.sub_catagory = params[:sub_catagory] || product.sub_catagory
      product.key_word = params[:key_word] || product.key_word
      product.tutorial_id = params[:tutorial_id] || product.tutorial_id
      product.product_id = params[:product_id] || product.product_id
      product.save
      render json: product.as_json
    end
  
    def destroy
      product = Product.find_by(id: params[:id])
      product.destroy
      render json: {message: "Product successfully destroyed."}
    end
  end
end

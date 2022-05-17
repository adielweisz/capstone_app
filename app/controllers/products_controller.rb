class ProductsController < ApplicationController
    def index
      products = Product.all
      render json: products.as_json
    end
  
    def create
      pp params
      product = Product.new(
        name: params[:name],
        brand: params[:brand],
        description: params[:description],
        image_url: params[:image_url],
        available_at: params[:available_at],
        department: params[:department],
        catagory: params[:catagory],
        sub_catagory: params[:sub_catagory],
        tutorial_id: params[:tutorial_id],
        form_id: params[:form_id],
        media: params[:media]
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
      product.image_url =params[:image_url] || product.image_url
      product.department = params[:department] || product.department
      product.description = params[:description] || product.description
      product.available_at = params[:available_at] || product.available_at
      product.catagory = params[:catagory] || product.catagory
      product.sub_catagory = params[:sub_catagory] || product.sub_catagory
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


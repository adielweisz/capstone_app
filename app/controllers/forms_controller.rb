class FormsController < ApplicationController
    def index
      forms = Form.all
      render json: forms.as_json
    end
  
    def create
      form = Form.new(
        name: params[:name]
      )
      form.save
      render json: form.as_json
    end
  
    def show
      form = Form.find_by(id: params[:id])
      render json: form.as_json
    end
  
    def update
      form = Form.find_by(id: params[:id])
      form.name = params[:name] || form.name
      form.save
      render json: form.as_json
    end
  
    def destroy
      form = Form.find_by(id: params[:id])
      form.destroy
      render json: {message: "Form successfully destroyed."}
    end
  end

class FormsController < ApplicationController
    def index
      forms = Form.all
      render json: forms.as_json
    end
  
    def create
      form = Form.new(
        question: params[:question],
        answer: params[:answer],
        user_id: params[:user_id]
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
      form.question = params[:question] || form.question
      form.answer = params[:answer] || form.answer    
      form.user_id = params[:user_id] || form.user_id
      form.save
      render json: form.as_json
    end
  
    def destroy
      form = Form.find_by(id: params[:id])
      form.destroy
      render json: {message: "Form successfully destroyed."}
    end
  end

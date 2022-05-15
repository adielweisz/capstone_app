
  # def create
  #   answer = Answer.new(
  #     answer: params[:answer],
  #     answer_id: params[:question_id]
  #   )
  #   answer.save
  #   render json: answer.as_json
  # end
  class AnswersController < ApplicationController

    def index
      answers = Answer.all
      render json: answers
    end
  
    def create
      answer = Answer.new(
        answer: params[:answer],
        answer_id: params[:question_id]
      

      )
      answer.save
      render json: answer.as_json
    end
  
    def show
      answer = Answer.find_by(id: params[:id])
      render json: answer
    end
  
    def update
      answer = Answer.find_by(id: params[:id])
      answer.answer = params[:answer] || answer.answer
      answer.save
      render json: answer.as_json
    end
  
    def destroy
      answer = Answer.find_by(id: params[:id])
      answer.destroy
      render json: {message: "answer successfully destroyed."}
    end
  end


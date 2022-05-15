class QuestionsController < ApplicationController

    def index
      questions = Question.all
      render json: questions.as_json
    end
  
    def create
      question = Question.new(
        question: params[:question]
      )
      question.save
      render json: question.as_json
    end
  
    def show
      question = Question.find_by(id: params[:id])
      render json: question.as_json
    end
  
    def update
      question = Question.find_by(id: params[:id])
      question.question = params[:question] || question.question
      question.save
      render json: question.as_json
    end
  
    def destroy
      question = Question.find_by(id: params[:id])
      question.destroy
      render json: {message: "question successfully destroyed."}
    end
  end


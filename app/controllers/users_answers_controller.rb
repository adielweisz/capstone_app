class UsersAnswersController < ApplicationController
  def create
   
    index = 0 
    params[:answers]
    while index < params[:answers].length
      p params[:answers][index][:questionId]
      p params[:answers][index]["answer#{index +1}"]
      
    
    users_answer = UsersAnswer.new(
      answer_id: params[:answers][index]["answer#{index + 1}"],
      question_id: params[:answers][index][:questionId],
      user_id: 1
    )
    index +=1
       users_answer.save
    end
 
    # render json: users_answer.as_json
  end

  def index
   users_answers = UsersAnswer.all
    render json: users_answers

  end 

end

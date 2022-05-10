class KeyWordsController < ApplicationController
  def index
    key_words = KeyWord.all
    render json: key_words.as_json
  end 
  def create
    key_word = KeyWord.new(
      key_word: params[:key_word],
      product_id: params[:product_id]
    )
    key_word.save
    render json: key_word.as_json
  end

  def show
    key_word = KeyWord.find_by(id: params[:id])
    render json: key_word.as_json
  end

  def update
    key_word = KeyWord.find_by(id: params[:id])
    key_word.key_word = params[:key_word] || key_word.key_word
    key_word.product_id =params[:product_id] || key_word.product_id   
    product.save
    render json: product.as_json
  end

  def destroy
    key_word = KeyWord.find_by(id: params[:id])
    key_word.destroy
    render json: {message: "key_word successfully destroyed."}
  end
end


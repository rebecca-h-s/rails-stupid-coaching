class QuestionsController < ApplicationController
  def ask
    # @ask = ask
  end

  def answer
    @ask_value = params[:answer]
    if @ask_value == 'I am going to work!'
      @response = 'Great!'
    elsif @ask_value.include?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end

class QuestionsController < ApplicationController
  def ask
  end
# conditions/logic here
  def answer
    @question = params[:question]
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question].end_with?('?')
      @answer = "Silly question, get to work!"
    else
      @answer = "I don't care, get back to work."
    end
  end
end

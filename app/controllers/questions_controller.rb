class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @stop_message = 'I am going to work right now!'

    @users_question = params[:answer]

    if @users_question == @stop_message
      @stupid_coach_answer = 'Great!'
    elsif @users_question.end_with?('?')
      @stupid_coach_answer = 'Silly question, get dressed and go to work!'
    else
      @stupid_coach_answer = 'I do not care, get dressed and go to work!'
    end
  end
end

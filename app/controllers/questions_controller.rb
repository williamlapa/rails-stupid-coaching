class QuestionsController < ApplicationController
  def ask; end

  def answer
    @user_input = params[:ask]

    @answer = if @user_input
                if @user_input == 'I am going to work'
                  'Great!'
                elsif @user_input[-1].include? '?'
                  'Silly question, get dressed and go to work!'
                else
                  "I don't care, get dressed and go to work!"
                end
              end
  end
end

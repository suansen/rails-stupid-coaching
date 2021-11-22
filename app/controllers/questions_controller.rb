# Question_controller
class QuestionsController < ApplicationController
  def ask
    ''
  end

  def home
    ''
  end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(params[:question])
  end

  def coach_answer(your_message)
    if your_message.downcase == 'i am going to work right now!'
      'Great!'
    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer != ''
      if your_message.upcase == your_message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      'Please enter a question!'
    end
  end
end

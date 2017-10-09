class QuestionsController < ApplicationController
  def ask
    # @answers = ANSWERS.select { |i| i[:input] == @input }
  end

  def answer
    @input = params[:query]
    @result = coach_answer_enhanced(@input)
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I am going to work right now!".upcase
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! " + coach_answer(your_message)
    else
      coach_answer(your_message)
    end
  end

end


# [ORIGINALS]

# coach = "unhappy"
# until coach == "happy"
#   puts "Speak to your coach!"
#   your_message = gets.chomp
#   his_answer = coach_answer_enhanced(your_message)
#   puts his_answer
#   coach = "happy" if his_answer == ""
# end

# def coach_answer(your_message)
#   if your_message == "I am going to work right now!"
#     return ""
#   elsif your_message.include? "?"
#     return "Silly question, get dressed and go to work!"
#   else
#     return "I don't care, get dressed and go to work!"
#   end
# end

# def coach_answer_enhanced(your_message)
#   if your_message == "I am going to work right now!".upcase
#     return ""
#   elsif your_message == your_message.upcase
#     return "I can feel your motivation! " + coach_answer(your_message)
#   else
#     coach_answer(your_message)
#   end
# end

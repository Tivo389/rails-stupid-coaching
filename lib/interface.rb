require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
coach = "unhappy"
until coach == "happy"
  puts "Speak to your coach!"
  your_message = gets.chomp
  his_answer = coach_answer_enhanced(your_message)
  puts his_answer
  coach = "happy" if his_answer == ""
end
module Presenter
  def print_welcome
    puts "###################################"
    puts "#   Welcome to Trivia Generator   #"
    puts "###################################"
  end

  def print_correct_option(correct_option)
    puts "#{correct_option}... Correct!"
  end

  def print_incorrect_option(incorrect_option, correct_answer)
    puts "#{incorrect_option}... Incorrect!"
    puts "The correct answer was: #{correct_answer}"
  end

  def print_score(score)
    puts "Well done! Your score is #{score}"
  end
end

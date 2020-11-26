module Requester
  def select_main_menu_action
    # prompt the user for the "random | scores | exit" actions
    prompt = "random | scores | exit"
    options = %w[random scores exit]
    gets_option(prompt, options)
  end

  def will_save?(score)
    # show user's score
    # ask the user to save the score
    # grab user input
    # prompt the user to give the score a name if there is no name given, set it as Anonymous
  end

  def get_number(max: 100_000)
    # prompt the user for a number between 1 and the maximum number of options
  end

  def gets_option(prompt, options)
    # prompt for an input
    puts prompt
    print ">"
    input = gets.chomp.strip

    # keep going until the user gives a valid option
    until options.include?(input)
      puts "Invalid option"
      print ">"
      input = gets.chomp.strip
    end
    input
  end

  def ask_question(question)
    puts "Category: #{question[:category]} | Difficulty: #{question[:difficulty]}"
    puts "Question: #{question[:question]}"
  end

  def gets_answer_to_question
    print ">"
    gets.chomp.strip.to_i - 1
  end
end

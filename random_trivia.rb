require_relative "random_trivia_controller"

module RandomTrivia
  def random_trivia
    load_questions
    ask_questions
  end

  def ask_questions
    # ask each question
    @questions.each do |question|
      ask_question(question)
      questions_options(question)
    end
    # if response is correct, put a correct message and increase score
    # if response is incorrect, put an incorrect message, and which was the correct answer
    # once the questions end, show user's score and promp to save it
  end

  def ask_question(question)
    puts "Category: #{question[:category]} | Difficulty: #{question[:difficulty]}"
    puts "Question: #{question[:question]}"
  end

  def load_questions
    # ask the api for a random set of questions
    questions_respons = RandomTriviaController.questions
    @questions = questions_respons[:body][:results]
    # parse_questions
  end

  def questions_options(question)
    options = question[:incorrect_answers] << question[:correct_answer]
    options.shuffle!
  end

  def parse_questions
    # questions came with an unexpected structure, clean them to make it usable for our purposes
  end
end

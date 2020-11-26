# do not forget to require your gem dependencies
# do not forget to require_relative your local dependencies
require_relative "presenter"
require_relative "requester"
require_relative "random_trivia"
require_relative "random_trivia_controller"

class TriviaGenerator
  # maybe we need to include a couple of modules?
  include Presenter
  include Requester
  include RandomTrivia

  # def initialize(filename = "score.json", questions, score)
  #   # we need to initialize a couple of properties here
  #   @filename = filename
  #   @questions = []
  #   @score = user_score
  # end

  def start
    # welcome message
    print_welcome
    # prompt the user for an action
    action = select_main_menu_action
    # keep going until the user types exit
    until action == "exit"
      case action
      when "random" then random_trivia
      when "scores" then scores
      end
      print_welcome
      action = select_main_menu_action
    end
  end

  def save(data)
    # write to file the scores data
  end

  def parse_scores
    # get the scores data from file
  end

  def print_scores
    # print the scores sorted from top to bottom
  end
end

trivia = TriviaGenerator.new
trivia.start

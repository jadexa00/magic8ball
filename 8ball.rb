require "colorize"
class MagicEightBall
  def initialize
     @arr = ["Yes",
    "No",
    "I think so",
    "Probably not",
  "Probably",
  "Honestly, just try again",
  "I don't know you tell me",
  "Sure",
]
    @answer_arr = @arr.clone
     puts "Welcome to MAGIC 8 BALL".colorize(:yellow)
    menu
  end
  def menu
    puts "1) TYPE 1 TO ASK THE MAGIC8BALL A QUESTION".colorize(:magenta)
    puts "2) EXIT.".colorize(:red)
    choice = gets.to_i
    case choice
      when 1
        puts "TYPE A QUESTION".colorize(:magenta)
        choice2 = gets.strip
        choice2 == "Change" ? answer_options : answer
        menu
      when 2
        puts "GOODBYE, FEEL FREE TO PLAY AGAIN".colorize(:red)
        exit
      else
        puts "FALSE INPUT, TRY AGAIN.".colorize(:red)
        menu    
    end
  end
    def answer
    puts @answer_arr.sample
  end
    
    def print_answers
    puts @answer_arr
    answer_options
  end
end
MagicEightBall = MagicEightBall.new
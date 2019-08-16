 require "colorize"

class Magic_eight_ball
  def initialize
     @arr = ["Yes",
    "No",
    "I think so",
    "Probably not",
    "Probably"
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
        puts "ASK ME ANY QUESTION".colorize(:magenta)
        choice2 = gets.strip
        choice2 == "Change" ? answer_options : answer
        menu
      when 2
        puts "GOODBYE".colorize(:red)
        exit
      else
        puts "TRY AGAIN".colorize(:red)
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
magic_eight_ball = Magic_eight_ball.new


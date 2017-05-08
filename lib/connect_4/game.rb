
class Output

  def messages
    @message ||=[]
  end

  def puts(message)
    messages << message
  end

end



def output
  @out  ||= Output.new
  @out
end




class Connect_4
  attr_accessor :players

  def initialize(output = nil,input = nil,board =  "."  * 7 )
    @output = output
    @input  =  input
    @player = "R"
    @board ||= board
  end

  def start
    @output.puts ("connect four start")
    row = "." * 7
    board = [row] * 6
    @output.puts(board)
  end



 def play
  message =  "player current #{@player == "R" ? "Red" : "Blue"}"
  @output.puts message
  col  =   @input.gets.to_i
  @board[col] = @player
  @output.puts "column #{col} selected"
  @player = @player == "R" ? "B" : "R"
end


def get_player
  @player
end

def board
  @board
end

def win?
  not (@board =~ /RRRR|BBBB/ ).nil?
end




end

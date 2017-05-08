
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

end




class Connect_4
  attr_accessor :players

  def initialize(output = nil,input = nil,board =  [ [],[],[],[],[],[],[]] )
    @output = output
    @input  =  input
    @player = :red
    @board = board
  end

  def start
    @output.puts ("connect four start")
    @output.puts(@board)
  end



 def play
  message =  "player current #{@player == :red ? "Red" : "Blue"}"
  @output.puts message
  col  =   @input.gets.to_i
  if @board[col].length == 6
    @output.puts "invalid choice - column full !"
    raise ArgumentError
  else
    @board[col] << @player
    @output.puts "column #{col} selected"
    @player = @player == :red ? :blue : :red
  end

end



def get_player
  @player
end

def board
  @board
end


def win?(current = 0)
  row  = ""

 @board.each do |item|
    row << (item.length != current + 1 ?    " " : item[current].to_s)
  end

 not (row =~ /redredredred|blueblueblueblue/ ).nil?

end




end

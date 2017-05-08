
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
  @board[1] << @player

  @output.puts "column #{col} selected"
  @player = @player == :red ? :blue : :red
end

# def column(col)
#   @board[col]
# end

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

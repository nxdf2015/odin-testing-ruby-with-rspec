
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

  def initialize(output = STDOUT,input = STDIN,board =  [ [],[],[],[],[],[],[]] )
    @output = output
    @input  =  input
    @player = :red
    @board = board
  end

  def start
    @output.puts ("connect four start")
    @output.puts(@board)
  end

 def loop


   draw = Draw.new(@board)
   puts draw.board
   begin

   begin
   current_column = play
   draw = Draw.new(@board)
   puts draw.board
  rescue ArgumentError
    invalid = true
  end
 end until win?(current_column)

 end

 def play
  message =  "player current #{@player == :red ? "Red" : "Blue"}"
  @output.puts message
  col  =   @input.gets.to_i
  if @board[col  ].length == 6
    @output.puts "invalid choice - column full !"
    raise ArgumentError
  else
    @board[col   ] << @player
    @output.puts "column #{col} selected"
    @player = @player == :red ? :blue : :red
  end
 col
end



def get_player
  @player
end

def board
  @board
end

def full?
  @board.all? do |column| column.length == 6 end
end


def win?(current_column = 0)
lines = Lines.new(current_column, @board)
lines.adjacent.any? do|line| (not (line =~ /redredredred|blueblueblueblue/ ).nil?) end
end

end

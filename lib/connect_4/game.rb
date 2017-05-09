
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

def line_adjacent(current_column,sign)
  row = ""
  row_current = @board[current_column].length
  (-3..3).each do |index|
    position_row =( row_current - 1).send(sign, index)
    position_col = current_column + index
    if (0..6) === position_col && (0..5) === position_row
      row <<  (@board[position_col ].length != (position_row + 1)  ? " " :  @board[position_col][position_row].to_s)
    end
 end
 row
 end

def column_adjacent(current_column)
  row  = ""
  row_current = @board[current_column].length

 @board.each do |item|
    row << (item.length != row_current   ?    " " : item[row_current-1].to_s)
  end
row
end


def win?(current_column = 0)
lines = [ column_adjacent(current_column),line_adjacent(current_column,:+), line_adjacent(current_column,:-) ]

lines.any? do|line| (not (line =~ /redredredred|blueblueblueblue/ ).nil?) end
#  row = col_win(current_column)
#  a = (not (row =~ /redredredred|blueblueblueblue/ ).nil?)
#
#  row =line_win(current_column,:+)
#
# b = (not (row =~ /redredredred|blueblueblueblue/ ).nil?)
#
# row  = line_win(current_column,:-)
#
#  c = (not (row =~ /redredredred|blueblueblueblue/ ).nil?)
#
# a || b || c
end

end

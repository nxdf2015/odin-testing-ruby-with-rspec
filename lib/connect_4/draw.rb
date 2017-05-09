class Draw

  def initialize(board)
    @board = board
  end


  def board
    (0..5).inject("") do |acc,index| acc = row(index) + "\n" + acc  end
  end
  
private
  def  row( i)
    (0..6).to_a.map  do |column|  color(@board[column][i].to_s) end.join("||")
  end

def color(c)
  case c
  when ""
       " "
  when "red"
      "\033[41;33m \033[0m"
  when "blue"
       "\033[44;33m \033[0m"

  end
end

 end


#
# draw = Draw.new([[:red],[ ],[:blue],[:red],[:red],[:red],[:red]])
#
# puts draw.board

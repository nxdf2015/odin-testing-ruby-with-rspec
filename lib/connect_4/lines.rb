class Lines
  def initialize(current_column,board)
    @board = board
    @current_column = current_column
  end

  def adjacent
    [line_adjacent( :+ ),line_adjacent( :- ),row_adjacent ,column_adjacent ]
  end

  private

  def line_adjacent(sign)
    row = ""
    row_current = @board[@current_column].length
    (-3..3).each do |index|
      position_row =( row_current - 1).send(sign, index)
      position_col = @current_column + index
      if (0..6) === position_col && (0..5) === position_row
        row <<  (@board[position_col ].length != (position_row + 1)  ? " " :  @board[position_col][position_row].to_s)
      end
   end
   row
   end

  def column_adjacent
    row  = ""
    row_current = @board[@current_column].length
   (0..4).each do |index|
      row <<   @board[@current_column][row_current - index].to_s if row_current - index >= 0
    end
  row
  end

 def row_adjacent
   row  = ""
   row_current = @board[@current_column].length
  @board.each do |item|
     row << (item.length >= row_current   ?     item[row_current-1].to_s : " ")
   end
 row
 end

end

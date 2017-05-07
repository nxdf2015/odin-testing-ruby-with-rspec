
class Output

  def messages
    @message ||=[]
  end

  def puts(message)
    messages << message
  end



end


def output
  @output ||= Output.new

end




class Connect_4
  attr_accessor :players
  def initialize(output = nil)
    @output = output
    @players= [:R,:B]
  end

  def start
    @output.puts("connect four start")
    row = "." * 7
    board = [row] * 6
    @output.puts(board)
  end


end

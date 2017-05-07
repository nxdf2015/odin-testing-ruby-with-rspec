require "spec_helper"


describe ".Connect_4" do
  describe "#start" do
    let(:output){double("output").as_null_object}
    let(:game){Connect_4.new(output)}
    it "output should contains 'connect 4 start '" do
      output.should_receive(:puts).with("connect four start")
      game.start
    end

    it "output should contains 'connect 4 start '" do
      row = "." * 7
      board = [row] * 6
      output.should_receive(:puts).with(board)
      game.start
    end
  end

end



describe "#select" do
  describe "player select   column 1" do
    let(:output){double("output").as_null_object}
    let(:input){double("input")}
    let(:game){Connect_4.new(output,input)}
    context "select column 1" do

    it "current player should be :R" do
        expect(game.get_player).to eq("R")
    end

    it "select first column should return :R" do
      input.stub(:gets).and_return("1")

      game.play
      expect(game.board[1]).to eq("R")
    end

     it "player change after selection " do
       input.stub(:gets).and_return("1")

       output.should_receive(:puts).with("player current Red")
       game.play
       expect(game.get_player).to eq("B")
     end
  end



end

end

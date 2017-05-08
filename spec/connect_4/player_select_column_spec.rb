

describe "#select" do
  describe "player select   column 1" do
    let(:output){double("output").as_null_object}
    let(:input){double("input")}
    let(:game){Connect_4.new(output,input)}
    context "select column 1" do

    it "current player should be :red" do
        expect(game.get_player).to eq(:red)
    end

    it "select first column should return :red" do
      input.stub(:gets).and_return("1")

      game.play
      expect(game.board).to match_array([ [],[:red],[],[],[],[],[]] )
    end

     it "player change after selection " do
       input.stub(:gets).and_return("1")

       output.should_receive(:puts).with("player current Red")
       game.play
       expect(game.get_player).to eq(:blue)
     end
  end
end

describe "player select column ever completed" do
  let(:board){[[],[:red],[],[],[],[],[]]}
  let(:input){double("input")}
  let(:output){double("output").as_null_object}
  let(:game){Connect_4.new(output,input,board)}

  context "player select column 1" do
    it "column 1 should contains two pieces" do
      input.stub(:gets).and_return("1")

      game.play
      expect(game.board[1]).to contain_exactly(:red,:red)
    end
    it "current player should change after play" do
      input.stub(:gets).and_return("1")
      game.play
      expect(game.get_player).to eq(:blue)
    end
end
end

describe "player select column ever completed" do
  let(:board){[[],[],[],[],[],[],[]]}
  let(:input){double("input")}
  let(:output){double("output").as_null_object}
  let(:game){Connect_4.new(output,input,board)}

    it "player red select column 1" do
      input.stub(:gets).and_return("1")
      game.play
      expect(game.board[1]).to contain_exactly(:red)
    end

    it "player blue select column 1" do
      input.stub(:gets).and_return("1")
      game.play
      input.stub(:gets).and_return("1")
      game.play
      expect(game.board[1]).to contain_exactly(:red,:blue)
    end

end


end

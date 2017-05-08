


describe "#play" do
  context " column 1 board full player select column 1" do
      let(:output){double("output").as_null_object}
      let(:input){double("input")}
      let(:board){[[],[:red,:red,:red,:red,:red,:red],[],[],[],[],[]]}
      let(:game){Connect_4.new(output,input,board)}
    it "length board[1] should be 6"do
      expect(game.board[1].length).to eq(6)
    end
    it "should return invalid choice" do
      input.stub(:gets).and_return("1")
      expect{game.play}.to  raise_error ArgumentError
    end

    it "invalid choice player should not change" do
    begin
      input.stub(:gets).and_return("1")
      player = game.get_player
      game.play

    rescue ArgumentError
      expect(game.get_player).to eq(player)
    end

    end

  

  end
end

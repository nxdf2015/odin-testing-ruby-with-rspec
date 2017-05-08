

describe ".Connect_4" do
  describe '#win?' do
    context "given a board with four pieces same color " do
      let(:output){double("output")}
      let(:input){double("input")}
      let (:board){ [[:blue],[:blue],[:blue],[:blue],[],[],[]]}
      let(:game){Connect_4.new(output,input,board)}

      it "return true" do
      #  expect(game.win?).to eq("blueblueblueblue   ")
         expect(game).to be_win
      end
    end

    context "given a board with four pieces same color " do
        let(:output){double("output")}
        let(:input){double("input")}
        let (:board){[[:red],[:red],[:red],[:red],[],[],[]]}
        let(:game){Connect_4.new(output,input,board)}

        it "win? return true" do
           expect(game).to be_win
        end
    end

  end
  describe "#win? " do
    context "first row full play with no four pieces next each other " do
      let(:output){double("output").as_null_object}
      let(:input){double("input")}
      let (:board){[[:red],[ ],[:red],[ ],[:red],[ ],[:red]]}
      let(:game){Connect_4.new(output,input,board)}
      it "win? should be false" do
        input.stub(:gets).and_return("1")
        game.play
        expect(game).not_to be_win
      end
  end
end


  describe "#win? " do
    context "first row full play with no four pieces next each other " do
      let(:output){double("output").as_null_object}
      let(:input){double("input")}
      let (:board){[[:red],[:blue],[:red],[:blue],[:red],[:blue],[:red]]}
      let(:game){Connect_4.new(output,input,board)}

      it "win? return false" do
        expect(game).not_to be_win
      end
    end

   context "the first row is complete , the player red select column 0 " do
     let(:output){double("output").as_null_object}
     let(:input){double("input")}
     let (:board){[[:red],[:blue,:red],[:red,:red],[:blue,:red],[:red],[:blue],[:red]]}
     let(:game){Connect_4.new(output,input,board)}

     it "win? should be true " do
       input.stub(:gets).and_return("0")
       game.play
       expect(game.board).to eq([[:red,:red],[:blue,:red],[:red,:red],[:blue,:red],[:red],[:blue],[:red]])
     end

     it "win? should be true " do
       input.stub(:gets).and_return("0")
       game.play
       expect(game).to be_win(1)
     end
   end



  context "the first and the second  row are complete , the player red select column 0 " do
      let(:output){double("output").as_null_object}
      let(:input){double("input")}
      let (:board){[[:red,:blue],[:blue,:red,:blue],[:red,:red,:blue],[:blue,:red,:blue],[:red,:blue,:blue],[:blue,:red],[:red,:red]]}
      let(:game){Connect_4.new(output,input,board)}
    it "win? should be true" do
      input.stub(:gets).and_return("6")
      game.get_player.should eq(:red)
      game.play
      game.get_player.should eq(:blue)
      input.stub(:gets).and_return("0")
      expect(game).to be_win(2)
    end

end

end

end

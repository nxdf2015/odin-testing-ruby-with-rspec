

describe ".Connect_4" do
  describe '#win?' do
    context "given a board with four pieces same color " do
      let(:output){double("output")}
      let(:input){double("input")}
      let (:board){  "RRRR..."}
      let(:game){Connect_4.new(output,input,board)}

      it "return true" do
         expect(game.win?).to be true
      end
    end

    context "given a board with four pieces same color " do
      let(:output){double("output")}
      let(:input){double("input")}
      let (:board){  "RRRR..."}
      let(:game){Connect_4.new(output,input,board)}

      it "return true" do
         expect(game.win?).to be true
      end
    end

  end
end

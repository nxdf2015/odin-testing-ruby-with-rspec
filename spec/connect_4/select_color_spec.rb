

describe ".Connect_4" do

  describe "#players" do
    let(:game){Connect_4.new}
    it "definition players " do
      expect(game.get_player).to eq("R")
    end

  end
end

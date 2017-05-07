

describe ".Connect_4" do

  describe "#select" do
    let(:game){Connect_4.new}
    it "definition players " do
      expect(game.players).to match_array([:R,:B])
    end

  end
end

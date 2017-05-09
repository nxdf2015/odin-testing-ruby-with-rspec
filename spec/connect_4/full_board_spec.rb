describe "#end? " do
  context "board full " do
  let(:output){double("output").as_null_object}
  let(:input){double("input")}
  let(:row){ [:red] * 6}
  let (:board){ [ row ] * 7}
  let(:game){Connect_4.new(output,input,board)}

  it "full? should return true" do
    expect(game).to be_full
  end
end
end

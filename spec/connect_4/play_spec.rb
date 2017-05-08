


describe ".Connect_4" do

  describe "#play" do
    let(:output){double("output").as_null_object}
    let(:input){double("input")}
    let(:game){Connect_4.new(output,input)}

    it "current player play" do
      input.stub(:gets).and_return("1")
      output.should_receive(:puts).with("column 1 selected")
      game.play


    end
  end
end

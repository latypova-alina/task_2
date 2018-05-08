describe Ticket do
  let(:lucky_tickets) { fixture("lucky_tickets") }
  let(:ticket) { described_class.new(JSON.parse(lucky_tickets)["lucky"]) }

  describe "generate" do
    it "should put lucky tickets in lucky_tickets file" do
      file = mock("numbers.txt")
      File.should_receive(:open).with("filename", "w").and_yield(file)
      file.should_receive(:write).with("text")
    end
  end
end

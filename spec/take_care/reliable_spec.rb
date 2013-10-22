require "spec_helper"

describe TakeCare::Reliable do
  let(:human) { Human.new.extend(TakeCare::Reliable) }

  describe "#take_care" do
    it "delegates method calls to Worker" do
      TakeCare::Worker.should_receive(:perform_async).with("Human", 4, :hard_work, :box1, :box2)
      human.take_care :hard_work, :box1, :box2
    end
  end

  describe "#take_care_of (alias of #take_care)" do
    it "delegates method calls to Worker" do
      TakeCare::Worker.should_receive(:perform_async).with("Human", 4, :hard_work, :box1, :box2)
      human.take_care_of :hard_work, :box1, :box2
    end
  end

  # context "Dinamic methods 'take_care_...'" do
  #   it "delegates method calls to Worker" do
  #     TakeCare::Worker.should_receive(:perform_async).with("Human", 4, :hard_work, :box1, :box2)
  #     human.take_care_of_hard_work :box1, :box2
  #   end
  # end
end

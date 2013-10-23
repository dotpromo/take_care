require "spec_helper"

describe TakeCare::Worker do
  redefine_human_class

  describe '#perform' do
    it "should include Sidekiq::Worker" do
      described_class.ancestors.should include Sidekiq::Worker
    end

    it "finds class instance by id and calls method with received args" do
      duty = double("Human instance")
      Human.should_receive(:find).with(4).and_return(duty)
      duty.should_receive(:hard_work).with(:box1, :box2)
      subject.perform("Human", 4, :hard_work, :box1, :box2)
    end
  end
end

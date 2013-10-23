module HumanMacros
  def redefine_human_class
    before :each do
      Object.__send__ :remove_const, "Human" if Object.const_defined? "Human"
      Object.const_set("Human", Class.new do
        include TakeCare::Reliable
        def id
          4
        end

        def hard_work(box1, box2)
        end
      end)
    end
  end
end

RSpec.configure do |config|
  config.extend HumanMacros
end

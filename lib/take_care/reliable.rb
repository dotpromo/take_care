module TakeCare
  module Reliable
    def take_care(method, *args)
      TakeCare::Worker.perform_async(self.class.to_s, self.id, method, *args)
    end
    alias_method :take_care_of, :take_care
  end
end

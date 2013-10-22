require "sidekiq"
require "active_support"

module TakeCare
  class Worker
    include ::Sidekiq::Worker

    def perform(class_name, instance_id, instance_method, *args)
      class_name.constantize.find(instance_id).__send__(instance_method, *args)
    end
  end
end

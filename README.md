# TakeCare

Sidekiq wrapper for activerecord model (or any class which instances are fetched by #id)

Method #take_care(method, *args) that delegates actual performing of own method to sidekiq

## Installation

Add this line to your application's Gemfile:

    gem 'take_care'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install take_care

## Usage

Include TakeCare::Reliable into your model and you will get #take_care method inside of it.

```rb
class Human < ActiveRecord::Base
  include TakeCare::Reliable

  def hard_work(box1, box2)
    # Code that needs to be executed in background
  end
end

human = Human.create(name: 'Alex')

human.take_care :hard_work, 'heavy box', 'second heavy box' # This goes to sidekiq

# Or the same using alias
human.take_care_of :hard_work, 'heavy box', 'second heavy box' # This goes to sidekiq

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

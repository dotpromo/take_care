# TakeCare

Sidekiq wrapper for activerecord model

Method #take_care(method) that delegates actual performing to sidekiq

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
  def hard_work(box1, box2)
    # Code that needs to be executed in background
  end
end

human = Human.create(name: 'Alex')

human.take_care :hard_work, 'heavy box', 'second heavy box' # This goes to sidekiq

```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

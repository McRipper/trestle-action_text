# Trestle Action Text Integration (trestle-action_text)

> [Action Text](https://guides.rubyonrails.org/action_text_overview.html) integration plugin for the Trestle admin framework


## Getting Started

These instructions assume you have a working Trestle application. To integrate trestle-action_text, first add it to your application's Gemfile:

```ruby
gem 'trestle-action_text'
```

Run `bundle install`, and then restart your Rails server.

Add trix dependency

```
$ yarn add trix
```

Add a rich text field to an existing model:

```ruby
# app/models/message.rb
class Message < ApplicationRecord
  has_rich_text :content
end
```

To add a Trix editor to your form, use the `rich_text_area` field type:

```ruby
Trestle.resource(:messages) do
  form do |message|
    rich_text_area :content
  end
end
```

## License

The gem is available as open source under the terms of the [LGPLv3 License](https://opensource.org/licenses/LGPL-3.0).

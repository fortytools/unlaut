# Unlaut



## Installation

Add this line to your application's Gemfile:

    gem 'unlaut'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unlaut

## Rails

You have to require the lib at startup to actually get the *to_i18n* method. You can add an initializer to
    config/initializers/unlaut.rb

where you then als can add own replacements:

   require 'unlaut'
   # loads the unlaut gem which adds a to_i18n method to strings to replace umlauts
   
   # Unlaut::Map.replace 'x', 'y'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Unlaut

Adds  a 'no_i18n' method to String, providing you with an accent and umlaut free version of it.

    # Example:
    irb(main):011:0> 'Hellö, Mr. Présidente'.no_i18n
    => "Hello, Mr. Presidente"
    
    # Replacements can be configured
    irb(main):012:0> Unlaut::Map.replace 'aeiuo', 'x'
    irb(main):013:0> 'I hate vowels'.no_i18n
    => "I hxtx vxwxls"

## Installation

Add this line to your application's Gemfile:

    gem 'unlaut'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install unlaut

## Rails

You have to require the lib at startup to actually get the *no_i18n* method. You can add an initializer to
    
    config/initializers/unlaut.rb

where you then als can add own replacements:

    require 'unlaut'
    # loads the unlaut gem which adds a no_i18n method to strings to replace umlauts
    
    # Unlaut::Map.replace 'x', 'y'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

whiskey-drinker-drinker
---------------

  - [![Gem Version](https://badge.fury.io/rb/whiskey-drinker.png)](https://rubygems.org/gems/whiskey-drinker)
  - [![Code Quality](https://codeclimate.com/github/krainboltgreene/whiskey-drinker.png)](https://codeclimate.com/github/krainboltgreene/whiskey-drinker)
  - [![Build Status](https://travis-ci.org/krainboltgreene/whiskey-drinker.png)](https://travis-ci.org/krainboltgreene/whiskey-drinker)
  - [![Dependency Status](https://gemnasium.com/krainboltgreene/whiskey-drinker.png)](https://gemnasium.com/krainboltgreene/whiskey-drinker)
  - [![Coverage Status](https://coveralls.io/repos/krainboltgreene/whiskey-drinker/badge.png?branch=master)](https://coveralls.io/r/krainboltgreene/whiskey-drinker)

whiskey-drinker is a [MUTE](MUTE) client for the whiskey framework.


Using whiskey-drinker
=====================

Once you've installed whiskey-drinker you can start your client with:

``` bash
$ whiskey connect [host]:[port]
```

Then you should be in an interactive shell that handles communication with the whiskey server.
You can save connections for later with this:

``` bash
$ whiskey save [name] [host]:[port]
$ whiskey open [name]
$ whiskey destroy [name]
$ whiskey list
```


Installing whiskey-drinker
==========================

**Requirements**:

  1. Ruby 2.0.0 (Ruby 1.9 might work, 1.8 wont work)

Install it using RubyGems:

    $ gem install whiskey-drinker


Contributing
============

  1. Fork it
  2. Create your feature branch (`git checkout -b my-new-feature`)
  3. Commit your changes (`git commit -am 'Add some feature'`)
  4. Push to the branch (`git push origin my-new-feature`)
  5. Create new Pull Request

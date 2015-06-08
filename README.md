[![Gem Version](https://badge.fury.io/rb/readypulse.svg)](http://badge.fury.io/rb/readypulse)
[![Dependency Status](https://gemnasium.com/chadmetcalf/readypulse.svg)](https://gemnasium.com/chadmetcalf/readypulse)
[![Build Status](https://circleci.com/gh/chadmetcalf/readypulse/tree/master.svg?style=shield)](https://circleci.com/gh/chadmetcalf/readypulse)
[![Test Coverage](https://codeclimate.com/github/chadmetcalf/readypulse/badges/coverage.svg)](https://codeclimate.com/github/chadmetcalf/readypulse/coverage)
[![Code Climate](https://codeclimate.com/github/chadmetcalf/readypulse/badges/gpa.svg)](https://codeclimate.com/github/chadmetcalf/readypulse)

# Readypulse

Ruby wraper for Readypulse API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'readypulse'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install readypulse

## Usage

```ruby
album = Album.new(id: 1)
album.name        # => "My Very First Curation"
album.description # => "This is my first curation on the ReadyPulse production site."

images = album.images # => #<ImageCollection>

album.images.first.types          # => ["email", "tile", "square-tile", "mobile-tile", "large", "original"]
album.images.first['mobile-tile'].url # => 'https://cloudinary-a.akamaihd.net/readypulse/image/upload/c_fill,fl_progressive,h_250,q_75,w_300/v1418764365/ig_3542844_630741923525326235_3542844.jpg'
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/readypulse/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

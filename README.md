Paperclip iBooks
================

Adding iBooks handling to Paperclip.

Requirements
------------

unzip

Installation
------------

Include paperclip-ibooks in your Gemfile.

Quick Start
-----------

In your model:

```ruby
class User < ActiveRecord::Base
  has_attached_file :book, :styles => {
    :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
  }, :processors => [:ibook]
end
```

License
-------

Licensed under BSD license.

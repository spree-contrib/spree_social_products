SpreeSocialProducts
===================

A Spree extension that allows you to add social network sharing buttons (e.g. the facebook like button) to your product pages.

There is some default styling that works well with the default spree theme, but this can be overrided.

![Screenshot](http://i.minus.com/iPkrAfsR0nphT.png)


Installation	
=======

Add this extension to your Gemfile:

```ruby
gem "spree_social_products", :git => "git://github.com/spree/spree_social_products.git"
```

Then run:

```
bundle install
```

If you would like to use the default styles you can run:

```
bundle exec rails g spree_social_products:install
```

in order to copy over the required css files.

Usage
=======

Enabled social networks will show up on product detail pages. In order to disable/enable social networks, head to Admin -> Configuration -> Social Sharing Settings.

__NOTE:__ To enable the Facebook like button, you must update the Spree::Config.facebook_app_id setting with your Facebook application ID. You can update this setting by running the following in the rails console:

```
Spree::Config.facebook_app_id = 'YOUR_FACEBOOK_APP_ID'
```

Copyright (c) 2012 John Dyer, released under the New BSD License

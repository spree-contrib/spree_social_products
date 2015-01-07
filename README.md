SpreeSocialProducts
===================

A Spree extension that allows you to add social network sharing buttons (e.g. the facebook like button) to your product pages.

There is some default styling that works well with the default spree theme, but this can be overrided.

![Screenshot](http://i.minus.com/iPkrAfsR0nphT.png)


Installation
=======

Add this extension to your Gemfile:

```ruby
gem 'spree_social_products', github: 'spree-contrib/spree_social_products', branch: 'master'
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

Additionally, you may further customize the looks of the Facebook like button with the settings shown below with their default values and other possible values in comments:

```
Spree::Config.facebook_layout = 'standard' # button_count, box_count
Spree::Config.facebook_show_faces = false # true
Spree::Config.facebook_verb_to_display = 'like' # recommend
Spree::Config.facebook_color_scheme = 'light' # dark
Spree::Config.facebook_send_button = false # true
```

You may refer to https://developers.facebook.com/docs/reference/plugins/like/ to preview the looks of different settings.

Copyright (c) 2012-2015 John Dyer, and contributors, released under the New BSD License

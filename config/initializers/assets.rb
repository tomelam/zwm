# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# After adding stylesheet_link_tag params[:visitors] to
# app/views/thredded/messageboards/index.html.erb and viewing the
# page /forum Sprockets told me "Asset was not declared to be precompiled
# in production" and said to add the following line and restart the server.
Rails.application.config.assets.precompile += %w( 1st_load_framework.css )
Rails.application.config.assets.precompile += %w( custom.css )

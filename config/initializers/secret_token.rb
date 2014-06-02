# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
RailsInterview::Application.config.secret_token = ENV['APPLICATION_SECRET_TOKEN'] || '58f9258ae5e8929702a01151de1d838907cc46b468595b42cfb03859cb6319e3a5f69e49917e4fc2e7eb37e0cc47576c456df71556c43b000f40a7a94a5a0fe0'

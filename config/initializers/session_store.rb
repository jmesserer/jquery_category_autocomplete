# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jquery_autocomplete_session',
  :secret      => 'a0009ed819e2c4bdd5e569e0311704a000976bf60e59a794e74214fd0147be6d08da18794070907a4b045edb18060eafcb4a352518357cddf1e810f0664175dd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

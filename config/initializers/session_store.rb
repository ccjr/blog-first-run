# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_blog_session',
  :secret => '54666563b5edd77dc6f22f15cdc7de20ab7a5600ed8d0e7f5dc285c12a0b5dd7b4be3e067b8e17a27ba567a37fc4e0e820a39496023b063d8468178b80e2cbb1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_howtobepro_session',
  :secret      => 'ee911ff2adc8461137ad5fbf166985149f31f34d0af854f4294a609177900f1e2f59f9e43903a354b6cd77cedef95b9bc7a99f5b17da0618b2a57591bb1fd4f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

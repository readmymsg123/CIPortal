# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_CIPortal_session',
  :secret      => '9156de603e3e5fab1a367450b4b2307b8865ec2211ff11088525705371627616346f24809370aaee44a205cacb42158b90e49b2d1c89d5a9eec872097e9ec70a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_buck_session',
  :secret      => '64d11342c95141e3ee5b82e71aa4cfd34eb5c39dbe13daf98295097d41334a82ad68b7c820222a27c9b512579abf8a4333de5482f638623098df26d703484329'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

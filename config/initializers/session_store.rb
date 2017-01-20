# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railsApp_session',
  :secret      => '90c512d7220fcd128a7e54fd74328fa903da56cadd69dcd4a15fb01b487e5492882d9fd1b219e0bbe674d025ba593fe2c6e42ac5e41946ec20941d8599bd5f25'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

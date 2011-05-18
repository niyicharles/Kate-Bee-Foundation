# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_katebeefoundation_session',
  :secret      => '30187144c24f41fbe09311a6e7a46e10c8c262e7d0b5f0c0f741b0ae4d8d8c97639a8f1c5191c6f8539caf50f8d751dc54542f5f84ce4b82521eafdb5be48981'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store


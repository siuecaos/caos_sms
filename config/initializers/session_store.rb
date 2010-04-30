# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_caos_sms_session',
  :secret      => '80ac6db9cafd8a1190aaa854285a2977472f6a26b63937fccd9f85dd134973fde8496265351ab610ca8797ab406758a18080bd300b702b686adce6bfd3cda794'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

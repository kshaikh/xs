# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_xs_session',
  :secret      => 'dbb718fc22159c8d101c7970793b8b430f4f99ee56b0d823480b05f1f8db1401ac6a1ad5990db87dbebc83ab9ba204885416d9f13cffb4a5bdd90b6651898410'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_taggable_example_session',
  :secret      => 'be6a99818e6b0f996cf60a8cd00ddc4574e289a2dfdbccf96d3c1d8390b399e016d45615a7dfcdb88a233164efdda56154134bca932ba41627036f54e4606fca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

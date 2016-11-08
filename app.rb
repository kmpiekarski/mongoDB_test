# app.rb

require 'mongo'

def connect_to_db
  client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'test')
  puts 'connection made'
end

def list_collection
  client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'test')
  db = client.database

  db.collections
  db.collection_names
end

connect_to_db

list_collection

# TestMongoConnection.rb

class TestMongoConnection
  def self.connect_to_db
    client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'test')
    puts 'connection made'
  end

  def self.list_collection
    client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'test')
    db = client.database

    db.collections
    db.collection_names
    put "collections work"
  end
end

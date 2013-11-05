MongoMapper.connection= Mongo::Connection.new('ds053668.mongolab.com', 53668)
MongoMapper.database = "angular_rails_sample"

if defined?(PhusionPassenger)
    PhusionPassenger.on_event(:starting_worker_process) do |forked|
        MongoMapper.connection.connect if forked
    end
end

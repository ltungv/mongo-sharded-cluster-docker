db = (new Mongo('localhost:27017')).getDB('test')
db.createCollection("test")
rs.slaveOk()
rs.initiate({
	"_id" : "shard1rs",
  	"members" : [
  		{
  			"_id" : 0,
  			"host" : "shard1a:27017"
  		},
  		{
  			"_id" : 1,
  			"host" : "shard1b:27017"
  		},
  		{
  			"_id" : 2,
  			"host" : "shard1c:27017"
  		}
  	]
})
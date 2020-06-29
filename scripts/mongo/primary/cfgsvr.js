rs.initiate({
	"_id" : "cfgsvrrs",
  	"members" : [
  		{
  			"_id" : 0,
  			"host" : "cfgsvr1:27017"
  		},
  		{
  			"_id" : 1,
  			"host" : "cfgsvr2:27017"
  		},
  		{
  			"_id" : 2,
  			"host" : "cfgsvr3:27017"
  		}
  	]
})
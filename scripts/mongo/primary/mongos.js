sh.addShard("shard1rs/shard1a")
sh.addShard("shard2rs/shard2a")

sh.enableSharding("test")
sh.shardCollection("test.test", {"value": 1})
sh.splitAt("test.test", {"value": 500})
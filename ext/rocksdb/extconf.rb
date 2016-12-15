require "mkmf"

dir_config('rocksdb')
RbConfig::CONFIG["CPP"] = "g++ -E -std=gnu++11"

have_header('rocksdb/db.h') 
have_library('rocksdb') 
$CPPFLAGS << " -std=gnu++11"
create_makefile("RocksDB/RocksDB")

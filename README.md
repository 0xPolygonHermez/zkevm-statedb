# zkevm-statedb
StateDB interface and common tools
The new stateDB is going to contain: 
- old statedb
- hashdb

# PROTO
Here is de definition os the proto for the server of the unified statedb. Are going to be divided in two: 
- `statedb_read.proto`:  for all the queries actions (read only)
- `statedb_write.proto`: for the write actions 
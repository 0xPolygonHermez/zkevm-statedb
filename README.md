# zkevm-statedb
StateDB interface and common tools
The new stateDB is going to contain: 
- old statedb
- hashdb

# PROTO
Here is de definition os the proto for the server of the unified statedb. Are going to be divided in two: 
- `statedb_read.proto`:  for all the queries actions (read only)

Each entity are defined in his own file: 
- `block.proto`
- `transaction.proto`
- `receipt.proto`
- ...
There are a common file called `common.proto` that define a shared structs: 
- `BigInt`, `Address`, `Hash32`


**Important**: Proto is using `optional` feature that is experimental. Check [here](https://protobuf.dev/programming-guides/field_presence/)


## Next steps
* define `statedb_write.proto`: for the write actions  
* Add support for LogFilters
* Add support for GasEstimation

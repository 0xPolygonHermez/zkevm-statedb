# JSON-RPC match
This document have the functions on JSON-RPC and the call use to fulfill in new statedb

| JSON-RPC                                | new hashdb call       |
| --------------------------------------- | --------------------- |
|                                         |                       |
| BLOCKS                                  |                       |
| eth_getBlockByHash                      | GetBlockByHash        |
| eth_getBlockByNumber                    | GetBlockNumber        |
| eth_getBlockTransactionCountByHash      | GetBlockByHash        |
| eth_getBlockTransactionCountByNumber    | GetBlockByNumber      |
| eth_getUncleByBlockHashAndIndex         | empty                 |
| eth_getUncleByBlockNumberAndIndex       | 0                     |
| eth_getUncleCountByBlockHash            | 0                     |
| eth_getUncleCountByBlockNumber          | 0                     |
| TRANSACTIONS RELATED                    |                       |
| eth_getTransactionByBlockHashAndIndex   | GetTransactionByBlock |
| eth_getTransactionByBlockNumberAndIndex |                       |
| eth_getTransactionByHash                |                       |





| RECEIPTS                  |                   |
| ------------------------- | ----------------- |
| eth_getTransactionReceipt | GetTransactionXXX |
|                           |                   |
| LOGS                      |                   |
| eth_getLogs               | GetTransactionXXX |
| eth_getFilterLogs         | ???               |
| eth_getFilterChanges      | ???               |
|                           |                   |
| ACCOUNTS                  |                   |
| eth_getBalance            | getBalance        |
| eth_getTransactionCount   | getNonce          |
| eth_getCode               | getCode           |
| eth_getStorageAt          | getSorageAt       |
|                           |                   |
|                           |                   |
| EXECUTOR RELATED          |                   |
| eth_estimateGas           | ???               |
| eth_sendRawTransaction    | ???               |
|                           |                   |
|                           |                   |
|                           |                   |
| NETWORK                   |                   |
| eth_chainId               | SMC               |
| eth_gasPrice              | N/A               |

eth_newBlockFilter
eth_newFilter
eth_getFilterChanges


GetTransactionXXX ( bool receipt, bool logs)
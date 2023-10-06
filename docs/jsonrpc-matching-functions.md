# JSON-RPC match
This document have the functions on JSON-RPC and the call use to fulfill in new statedb

| JSON-RPC                                | new hashdb call       |
| --------------------------------------- | --------------------- |
|                                         |                       |
| BLOCKS                                  |                       |
| eth_getBlockByHash                      | GetBlockByHash        |
| eth_getBlockByNumber                    | GetLastBlockNumber    |
| eth_getBlockTransactionCountByHash      | GetBlockByHash        |
| eth_getBlockTransactionCountByNumber    | GetLastBlockNumber    |
| eth_getUncleByBlockHashAndIndex         | empty                 |
| eth_getUncleByBlockNumberAndIndex       | 0                     |
| eth_getUncleCountByBlockHash            | 0                     |
| eth_getUncleCountByBlockNumber          | 0                     |
| TRANSACTIONS RELATED                    |                       |
| eth_getTransactionByBlockHashAndIndex   | GetTransactionByBlock |
| eth_getTransactionByBlockNumberAndIndex |                       |
| eth_getTransactionByHash                |                       |
| eth_getTransactionCount                 |                       |




| RECEIPTS                  |                   |
| ------------------------- | ----------------- |
| eth_getTransactionReceipt | GetTransactionXXX |
|                           |                   |
| LOGS                      |                   |
| eth_getLogs               | GetTransactionXXX |
| eth_getFilterLogs         |                   |
| eth_getFilterChanges      |                   |
|                           |                   |
| ACCOUNTS                  |                   |
| eth_getBalance            |                   |
| eth_getCode               |                   |
| eth_getStorageAt          |                   |
|                           |                   |
|                           |                   |
| WRITE ACTIONS             |                   |
| eth_estimateGas           | ???               |
| eth_sendRawTransaction    |                   |
|                           |                   |
|                           |                   |
|                           |                   |
| NETWORK                   |                   |
| eth_chainId               | ???               |
| eth_gasPrice              |                   |

eth_newBlockFilter
eth_newFilter
eth_getFilterChanges


GetTransactionXXX ( bool receipt, bool logs)
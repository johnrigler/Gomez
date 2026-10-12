# Gomez / Zorkmid EVM compatibility research

Gomez is an existing Polygon contract experiment. [ETHDenver architecture](https://github.com/johnrigler/EthDenver/blob/main/docs/ethdenver-2027-showcase.md) proposes a **separate** conventional OpenZeppelin ERC-20 ZORK on Base with companion etching and artifact contracts. Do not replace Gomez or rewrite its deployed address.

Engineering comparison tasks:
- Recover Gomez ABI/source, deployed contract code and precise semantics before making compatibility claims.
- Identify reusable transaction-data, compact encoding, naming or identity patterns. Distinguish original user-authored payloads from EVM event logs.
- Prototype external adapter/decoder and explicit versioned events, retaining a stable mapping to contract address, chain ID and transaction hash.
- Consider Jethro and M64 experiments only after real codec test vectors have been gathered; don't implement from guesses.
- Validate Base Sepolia versus Polygon Amoy test transactions for compatibility, gas and independent recovery.

Security: token balances and allowances use established ERC-20 code; authorization to execute actions is separate from encoded text. Avoid unrestricted call routers. No assertion that ZORK is deployed.

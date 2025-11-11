# Base image with Foundry + Anvil
FROM ghcr.io/foundry-rs/foundry:latest

# Run as root to expose port
USER root

# Expose Anvil RPC port
EXPOSE 8547

# Set entrypoint to start Anvil
ENTRYPOINT ["anvil", 
  "--fork-url", "https://rpc.ankr.com/bsc/f5afe04544cb6b2befaa35cfd13e388dd47c478a2a069f519467fd9cacb4fb0b",
  "--fork-chain-id", "8453",
  "--fork-block-number", "38023318",
  "--host", "0.0.0.0",
  "--port", "8547",
  "--auto-impersonate"
]

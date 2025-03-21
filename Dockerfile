# Base image with Node.js and Foundry Anvil pre-installed
FROM ghcr.io/foundry-rs/foundry:latest

# Use root permissions to install Node.js
USER root

# Expose Anvil RPC port
EXPOSE 8545

# Start Anvil with BSC mainnet fork
CMD anvil --fork-url "https://rpc.ankr.com/bsc/f5afe04544cb6b2befaa35cfd13e388dd47c478a2a069f519467fd9cacb4fb0b" \
          --fork-chain-id 56 \
          --fork-block-number 47593473 \
          --host 0.0.0.0 \
          --port 8545

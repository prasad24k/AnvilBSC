# Use the official Foundry Docker image
FROM ghcr.io/foundry-rs/foundry:latest

# Install Node.js
RUN apt-get update && apt-get install -y nodejs npm

# Expose port
EXPOSE 8545

# Start Anvil with BSC mainnet fork
CMD anvil --fork-url "https://rpc.ankr.com/bsc/f5afe04544cb6b2befaa35cfd13e388dd47c478a2a069f519467fd9cacb4fb0b" \
          --fork-chain-id 56 \
          --fork-block-number 47593473 \
          --host 0.0.0.0 \
          --port 8545

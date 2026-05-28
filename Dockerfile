# Base image with Foundry + Anvil
FROM ghcr.io/foundry-rs/foundry:latest

# Run as root to expose port
USER root

# Expose Anvil RPC port
EXPOSE 8547

# Set entrypoint to start Anvil
ENTRYPOINT ["anvil", "--fork-url", "https://bsc-mainnet.core.chainstack.com/90c2eefc406aa491ad23e27f5625b147", "--chain-id", "56", "--fork-block-number", "100863986", "--host", "0.0.0.0", "--port", "8547", "--auto-impersonate"]

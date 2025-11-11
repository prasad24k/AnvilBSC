# Base image with Foundry + Anvil
FROM ghcr.io/foundry-rs/foundry:latest

# Run as root to expose port
USER root

# Expose Anvil RPC port
EXPOSE 8547

# Set entrypoint to start Anvil
ENTRYPOINT ["anvil", "--fork-url", "https://base-mainnet.g.alchemy.com/v2/CHrQG-MrPx-l4xpIEZ7wOlcTIXVGgH-w", "--chain-id", "8453", "--fork-block-number", "38027672", "--host", "0.0.0.0", "--port", "8547", "--auto-impersonate"]

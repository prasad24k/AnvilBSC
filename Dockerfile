# Base image with Foundry (includes Anvil, Forge, Cast)
FROM ghcr.io/foundry-rs/foundry:latest

# Run as root to expose ports publicly
USER root

# Set working directory
WORKDIR /app

# Expose the Anvil RPC port
EXPOSE 8542

# Environment variables (optional)
ENV FORK_URL="https://base-mainnet.g.alchemy.com/v2/CHrQG-MrPx-l4xpIEZ7wOlcTIXVGgH-w"
ENV CHAIN_ID=8453
ENV FORK_BLOCK=38026885
ENV HOST=0.0.0.0
ENV PORT=8542

# Start Anvil fork on Base mainnet with impersonation enabled
ENTRYPOINT ["bash", "-c", "\
  echo '🚀 Starting Anvil fork on Base Mainnet...' && \
  anvil --fork-url \"$FORK_URL\" \
        --chain-id $CHAIN_ID \
        --fork-block-number $FORK_BLOCK \
        --host $HOST \
        --port $PORT \
        --auto-impersonate \
        --block-time 1 \
        --no-rate-limit \
        --quiet \
"]

# Use Foundry base image (includes Anvil)
FROM ghcr.io/foundry-rs/foundry:latest

# Run as root to expose publicly
USER root

# Working directory
WORKDIR /app

# Expose Anvil port
EXPOSE 8542

# Set environment variables
ENV FORK_URL="https://base-mainnet.g.alchemy.com/v2/CHrQG-MrPx-l4xpIEZ7wOlcTIXVGgH-w"
ENV CHAIN_ID=8453
ENV FORK_BLOCK=37984734
ENV HOST=0.0.0.0
ENV PORT=8542

# Start anvil with proper shell escaping
CMD anvil \
  --fork-url "$FORK_URL" \
  --chain-id "$CHAIN_ID" \
  --fork-block-number "$FORK_BLOCK" \
  --host "$HOST" \
  --port "$PORT" \
  --auto-impersonate \
  --block-time 1 \
  --no-rate-limit

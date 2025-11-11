# Base image with Foundry + Anvil
FROM ghcr.io/foundry-rs/foundry:latest

# Run as root to expose port publicly
USER root

# Expose the Anvil RPC port
EXPOSE 8547

# Start Anvil fork on Base mainnet
ENTRYPOINT ["bash", "-c", "\
  echo '🚀 Starting Anvil Base Mainnet fork...' && \
  anvil \
    --fork-url https://base-mainnet.g.alchemy.com/v2/mB684Ag2wj58-A-KjPY7oEGvyduvlHnQ \
    --fork-chain-id 8453 \
    --fork-block-number 38025379 \
    --host 0.0.0.0 \
    --port 8547 \
    --auto-impersonate \
   
"]

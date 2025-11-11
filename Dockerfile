# Base image with Foundry + Anvil
FROM ghcr.io/foundry-rs/foundry:latest

# Run as root (needed for port binding)
USER root

# Expose Anvil RPC port
EXPOSE 8547

# Use bash to delay startup slightly and log output
ENTRYPOINT ["bash", "-c", "\
  echo '🚀 Starting Anvil Base Mainnet fork...' && \
  sleep 5 && \
  anvil \
    --fork-url https://base-mainnet.g.alchemy.com/v2/mB684Ag2wj58-A-KjPY7oEGvyduvlHnQ \
    --fork-chain-id 8453 \
    --fork-block-number 38026296 \
    --host 0.0.0.0 \
    --port 8547 \
    --auto-impersonate \
    --verbose \
    --silent=false \
  | tee /root/anvil.log \
"]

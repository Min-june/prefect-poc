#!/bin/bash

source .env

# Ensure PREFECT_HOME is set
if [ -z "$PREFECT_HOME" ]; then
  echo "PREFECT_HOME is not set. Please set it in the .env file."
  exit 1
else
  export PREFECT_HOME
  echo "PREFECT_HOME is set to: $PREFECT_HOME"
fi

# Print other environment variables for verification
echo "PREFECT_API_DATABASE_CONNECTION_URL is set to: $PREFECT_API_DATABASE_CONNECTION_URL"

prefect server start
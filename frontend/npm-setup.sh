#!/bin/bash

# Alternative setup using npm instead of pnpm
echo "Setting up project with npm..."

# Clean any existing lock files
rm -f pnpm-lock.yaml
rm -f yarn.lock
rm -rf node_modules

# Install dependencies with npm
echo "Installing dependencies with npm..."
npm install

# Build the project
echo "Building project..."
npm run build

echo "Setup complete with npm!"
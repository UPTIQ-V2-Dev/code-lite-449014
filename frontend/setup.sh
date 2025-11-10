#!/bin/bash

# Setup script to install pnpm if not available
echo "Setting up pnpm..."

# Check if pnpm is available
if ! command -v pnpm &> /dev/null; then
    echo "pnpm not found. Attempting to install..."
    
    # Try using corepack (available in Node.js 16+)
    if command -v corepack &> /dev/null; then
        echo "Using corepack to enable pnpm..."
        corepack enable
        corepack prepare pnpm@latest --activate
    else
        # Fallback to npm installation
        echo "Installing pnpm using npm..."
        npm install -g pnpm
    fi
else
    echo "pnpm is already available"
fi

# Install dependencies
echo "Installing dependencies..."
pnpm install

echo "Setup complete!"
# Makefile for Foundry and Anvil setup

# Install Foundry
install-foundry:
	@echo "Installing Foundry..."
	@curl -L https://foundry.paradigm.xyz | bash

# Update dependencies
update-dependencies:
	@echo "Updating dependencies..."
	@forge install smartcontractkit/foundry-chainlink-toolkit
	@forge install foundry-rs/forge-std
	@git submodule update

# Install Anvil as a third-party dependency
install-anvil:
	@echo "Installing Anvil as a third-party dependency..."
	# Add Anvil installation steps here
	# This step is specific to Anvil and might require manual steps or API calls

# Target to run all installations
all: install-foundry update-dependencies install-anvil

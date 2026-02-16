# Justfile for NixOS Configuration Management

# List available commands

default:
@just --list

# Apply the NixOS configuration

rebuild:
sudo nixos-rebuild switch --flake .#nixos

# Test the NixOS configuration without bootloader changes

test:
sudo nixos-rebuild test --flake .#nixos

# Update flake inputs

update:
nix flake update

# Run garbage collection

clean:
nix-collect-garbage -d

# Run the pre-commit checks manually

check:
pre-commit run --all-files

# Format all nix files

fmt:
nix fmt

# Check for dead code and syntax errors

lint:
nix run github:astro/deadnix -- .
nix run nixpkgs#statix -- check

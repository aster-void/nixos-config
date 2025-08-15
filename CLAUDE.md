# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### NixOS System Management
- `nixos-rebuild switch` - Apply configuration changes (requires sudo)
- `nixos-rebuild boot` - Apply changes on next boot
- `nixos-rebuild test` - Test configuration without persistence
- `nix flake update` - Update flake inputs
- `nix develop` or `nix-shell` - Enter development shell with tools

### Development Tools
- `lefthook install` - Install git hooks (run after clone)
- `alejandra {files}` - Format Nix files (auto-runs on commit)
- `deadnix --fail` - Check for dead code
- `statix check .` - Static analysis for Nix files
- `nix flake check` - Validate flake configuration

### Pre-commit Hooks
The repository uses lefthook for git hooks:
- **format**: Runs alejandra on staged .nix files
- **deadnix**: Checks for unused code
- **statix**: Static analysis checks

## Architecture Overview

### Flake Structure
This is a NixOS flake-based configuration with multiple host definitions:
- **amberwood**: Desktop with games, NVIDIA drivers, secure boot
- **bogster**: Similar to amberwood with games enabled  
- **carbon**: Gaming-enabled configuration

### Directory Structure

#### Core Configuration
- `flake.nix` - Main flake definition with inputs and host configurations
- `configuration.nix` - Base system configuration importing core modules
- `hosts/` - Host-specific configurations (amberwood, bogster, carbon)
- `etc/` - System-level configurations (fonts, i18n, network, etc.)

#### Modular Components
- `modules/` - Pluggable modules that work by adding to imports
  - `desktop/` - Display managers (ly, sddm, gdm) and window managers (Hyprland, Plasma6, GNOME)
  - `drivers/` - Hardware drivers (NVIDIA, Logitech)
  - `games/` - Gaming-related packages and Steam
  - `hardware/` - Hardware configs (sound, Bluetooth, bootloaders)
  - `wsl/` - WSL-specific configuration
- `plugins/` - Extensions to NixOS modules (no side effects unless enabled)
- `packages/` - Additional package definitions
- `templates/` - Reusable configuration templates

#### Key Files
- `templates/packages.nix` - Dynamic package loading system using shared-config
- `shell.nix` - Development shell with formatting and linting tools
- `secrets.nix` - Age-encrypted secrets configuration
- `lefthook.yml` - Git hooks configuration

### Package Management
Uses a custom package loading system via `templates/packages.nix`:
- Packages are defined in external `shared-config` flake input
- `enable-pkgs` parameter allows selective package set loading
- Supports both string package set names and direct package lists

### External Dependencies
- **agenix**: Secret management
- **nix-flatpak**: Flatpak integration
- **lanzaboote**: Secure boot support
- **shared-config**: External package and configuration definitions

### Configuration Patterns
- Host configurations import relevant modules from `modules/`
- Desktop environments are modular (comment/uncomment in `modules/desktop/default.nix`)
- Hardware configurations are auto-generated and host-specific
- Uses shared configuration from external flake for consistency

### Known Issues (from NOTES.md)
- Fcitx5 input method requires proper `i18n.inputMethod` configuration
- Electron apps need `--enable-wayland-ime` flag for input methods
- Old Nix versions (2.15) may cause store path errors

## Development Workflow
1. Make configuration changes in relevant modules or host files
2. Test with `nixos-rebuild test` (optional)
3. Apply with `nixos-rebuild switch`
4. Git hooks automatically format and check code on commit
5. Use `nix develop` for development tools environment
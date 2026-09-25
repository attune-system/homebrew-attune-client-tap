# Attune Homebrew Tap

This tap distributes the Attune CLI and MCP server as a Homebrew cask.

## Installation

```bash
brew install --cask attune-system/attune-client-tap/attune
```

The cask installs both executables:

- `attune` is the Attune command-line client.
- `attune-mcp` is the local MCP server. It uses stdio by default and shares the
  CLI's profile configuration.

## Release automation

The cask is generated from Attune's stable `vX.Y.Z` GitHub releases. Its source
workflow uploads checksum-verified macOS archives for Apple Silicon and Intel,
then writes `Casks/attune.rb` with the corresponding SHA-256 values.

Before publishing the first release, configure a fine-grained GitHub token as
the `HOMEBREW_TAP_TOKEN` secret in `attune-system/attune`. It needs
**Contents: Read and write** access to this repository. The default
`GITHUB_TOKEN` cannot update a different repository.

The first stable release creates `Casks/attune.rb`; the tap validation workflow
intentionally succeeds before then because no release archive exists to audit.

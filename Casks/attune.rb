cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.2"
  sha256 arm: "a83e758e18d8db0b46e3524027a6e7b08a70c5c2d31a8779b28bfeb2ad60ffe0",
         intel: "fc0eba242242e863f54d824aca267eff1c64652d639f8b8e8a1697bee73e07f4"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.6.0"
  sha256 arm: "435aada09891f5285dfb9e011bead207e9a602c7445b5dc6813a8d48f1c343c3",
         intel: "5b4a07ffc60c2c057716613b736d1e8ce08f433aa9531ec4252529b0669e1a86"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.3"
  sha256 arm: "363e606c9cd09ebae380cd02e982ae85c5549e12d3ec2fb9fab366e233b68826",
         intel: "526a6857f0447bb0f0397f86d4115b6a1a985b5cfb8bf7a785540609c5f366aa"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.0"
  sha256 arm: "6c5e7dff45ca012d962764288ca581d1413ce1d1dae971321d7624b209c81adf",
         intel: "145e55a91220a88312c49f3878f3f093171a50a88f46222576d12771830d5a94"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

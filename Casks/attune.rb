cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.2"
  sha256 arm: "a2ef6d153cc49e5bcfbae57ffa001e507bf2cf00154d1fbdc982dfbc102c1cce",
         intel: "0fec439522357ff7e614f85dfb5dad0182451420a28a8922094a6bec95c15a2d"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

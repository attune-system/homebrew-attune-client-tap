cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.4"
  sha256 arm: "853b1a1a991ef94bdb474a6791caed0048c879868c332d3b14fd2cf73874e18c",
         intel: "445af6205f0da67c5fc9a586d6e06e981308797c58011c40698ccbff9e293b62"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.0"
  sha256 arm: "613f7333b8e4631212d09276b8346dff45976d5c55f86384c4a78337899540ac",
         intel: "e945fc4285dafea9e4d2ba43b511e7f2ab3eca00109aa22f5d7f484476665aa0"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

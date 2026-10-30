cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.1"
  sha256 arm: "6043c3e2452f37a176f14f60afb098d875df0397e6b91264042715595095a687",
         intel: "13f8d8cc1a36d7789d681d99b0acc87567f12dcf4afb3172430f73b74f1a1239"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

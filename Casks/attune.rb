cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.0"
  sha256 arm: "066d0d63e80b00ca4242e8aee8b8a8e3012ef682f2e1963567ef8bfd21b2caf8",
         intel: "96cb9c05c75ad42a7dd98b0861c5bde406cd576e0c0fab1331117bbe7a4b9b11"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

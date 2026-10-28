cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.0"
  sha256 arm: "e28f420380eb1fdc469809d91967177cfe29a1b127e78905b7c56fec21428a5b",
         intel: "b5e60cbcba98b0381fa55c0be38873fb8cdb0bb3b47bcf9874c8440a13aec000"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

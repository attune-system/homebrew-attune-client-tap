cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.4"
  sha256 arm: "121d753d8f5c5ef1583bf0cf58496defe6d7a9ae69b6fd61d0698a63709d82f1",
         intel: "d2f9725656eff46e4f2c01f1317d10ba17546117c99f266b69a2f3ecf1ab9890"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

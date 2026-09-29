cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.1"
  sha256 arm: "2acc9c83ece9758f08356f883b347ab6a1665ddd22c99ef58a193fb5f88d39e8",
         intel: "55b6f11963ed2f976b94543b2f7635269b2bf4986b34d1fd26be20719336dbfb"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm: "f03779634f7d83ec16e362753dc3dfba352838553e7727b648c69bd40f75999e",
         intel: "8412ffe8b62641fdb60401c205b68c9eeb6c1048669fff77eb28ae39af30368e"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

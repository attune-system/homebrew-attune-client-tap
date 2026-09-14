cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.6.2"
  sha256 arm: "1996e8eaf6e96273c1cd615147b33b2797ef055194725608053df06865b2619c",
         intel: "4b1cc250125852d925b2cc2f3759ea95830403764ef1f33a07b43bae81386946"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.10.2"
  sha256 arm: "41733f69093a54b5c7bb5a9ba2eb974d903a5ed5ea35f565376874add78915f7",
         intel: "1700a232a4300355ce7209664da89d8a70dbd6705ac34563e0b22449cf6c56ac"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.3"
  sha256 arm: "ea69ef1d1e381c5fdf86317ed0c197ac9da060053c5e8530dac935164b65f11b",
         intel: "0dfb75ec8a0fab8cb1e0277a34f8e4a40ba1cfd6522f7fe748913ecdbed9b51e"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

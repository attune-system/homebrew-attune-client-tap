cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.8.0"
  sha256 arm: "128105af456daf7013cd1dfc4de09886e0392faa4bf6784560fb76ea5cd3414c",
         intel: "1b806825b6fcc3f2674193b0287e131acbb1c68958b9c359b10087037dd74457"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

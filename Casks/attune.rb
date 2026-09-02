cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.1"
  sha256 arm: "91d77bda729ab470cb80d01a6c33723e8bc41f5125c9dbd89a550eb6f84dea60",
         intel: "ba186199cbf29057d01d895dc8128f11a12a15113593056d33d2b937e116c44c"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

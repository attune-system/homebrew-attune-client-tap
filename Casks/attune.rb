cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.0"
  sha256 arm: "b776c07257ef1113e8560d9e9cb8de2d713cff4fb213eacb3b52d4c21f44a82f",
         intel: "e4b9f28aee0d9ef5cf053329ed3ced95b3535e307fa1d764ee40cf2d96a9ff0e"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.3"
  sha256 arm: "8c8da8f140ebd3a8bb02aad179107a143f95c5cb97f26c29ed08124243609167",
         intel: "ba124d8725283e1991fbb721c1078f1406ab1f57cefdec7756b13a067b87e1b0"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

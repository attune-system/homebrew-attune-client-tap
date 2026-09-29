cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.2"
  sha256 arm: "d164af42cba1c92b152a3baa857e04a66f6305154761fee3769a7aa2a06ba777",
         intel: "271b804f35976cce811e9252f1fcd010e0d39db04d5642e3e8f8849b18550961"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

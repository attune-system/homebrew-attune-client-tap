cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.0"
  sha256 arm: "bb5a998e4c42c2d36450f2e13bfd927c777ee416b183015db25cf4406a21919a",
         intel: "266aaa14583a3697f7023e024154631ae73f35ecc91c4fc585cc94cd8dea2786"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

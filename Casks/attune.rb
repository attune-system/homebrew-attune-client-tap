cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.11.1"
  sha256 arm: "a5df4ea43d852c5dcd1edea4076f3e191644be02e438afa4807459b513112aa6",
         intel: "97e8193ae066d0112e97b31bed0e85f8088b28d8686e3cfd690c5d135cfd04e3"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

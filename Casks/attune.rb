cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.6.3"
  sha256 arm: "7a882b544d4dc17b3003db4db715b6262e9049714edfc5516202dd626bfe87ee",
         intel: "c27b0f32f6244dc1af8cc0fa7fb5223d23d9731a570e903c4efd0ca437bbce4f"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "0.7.5"
  sha256 arm: "599819a474ebd63986ee6baccea0286454cb7bfc70ea3a90b484e5fd1e4f1eac",
         intel: "1cd4abec9fef17c5245d49788475bf0b2f9135fa86b23dd5b143059edd28beb0"

  url "https://github.com/attune-system/attune/releases/download/v#{version}/attune_#{version}_darwin_#{arch}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end

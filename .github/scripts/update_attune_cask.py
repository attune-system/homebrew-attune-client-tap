#!/usr/bin/env python3
"""Write the Attune cask from a stable release version and archive checksums."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


VERSION_PATTERN = re.compile(r"\d+\.\d+\.\d+")
SHA256_PATTERN = re.compile(r"[0-9a-f]{64}")

CASK_TEMPLATE = """\
cask "attune" do
  arch arm: "arm64", intel: "amd64"

  version "{version}"
  sha256 arm: "{arm_sha256}",
         intel: "{intel_sha256}"

  url "https://github.com/attune-system/attune/releases/download/v#{{version}}/attune_#{{version}}_darwin_#{{arch}}.tar.gz"
  name "Attune"
  desc "Event-driven automation CLI and MCP server"
  homepage "https://github.com/attune-system/attune"

  binary "attune"
  binary "attune-mcp"

  generate_completions_from_executable "attune", "completion"
end
"""


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--version", required=True)
    parser.add_argument("--arm-sha256", required=True)
    parser.add_argument("--intel-sha256", required=True)
    parser.add_argument(
        "--output",
        type=Path,
        default=Path(__file__).resolve().parents[2] / "Casks" / "attune.rb",
        help="Cask path to write (default: Casks/attune.rb)",
    )
    args = parser.parse_args()

    if not VERSION_PATTERN.fullmatch(args.version):
        parser.error("--version must be a stable X.Y.Z release version")

    for argument in ("arm_sha256", "intel_sha256"):
        if not SHA256_PATTERN.fullmatch(getattr(args, argument)):
            parser.error(f"--{argument.replace('_', '-')} must be a lowercase SHA-256 digest")

    return args


def main() -> None:
    args = parse_args()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(
        CASK_TEMPLATE.format(
            version=args.version,
            arm_sha256=args.arm_sha256,
            intel_sha256=args.intel_sha256,
        ),
        encoding="utf-8",
    )


if __name__ == "__main__":
    main()

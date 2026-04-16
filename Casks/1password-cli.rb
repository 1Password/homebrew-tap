cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.34.0"
  sha256 arm:   "a9c93d45ad62665c6350ed8958f281a94034a79c94e88077e530f6d129699a5d",
         intel: "d2e4cbdf8b5d2d421a411e5251c6956f3ffce90adde82b2a429435645c9bc91d"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

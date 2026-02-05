cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.32.1"
  sha256 arm:   "63310eb6a66dedbc940d6fa80faab4a07f68d54a7add91236dfb60f748bbac2d",
         intel: "876017f048449c972b891715c2dbb30ca7d6d3929d398b1c6d0b19eeb75627f1"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

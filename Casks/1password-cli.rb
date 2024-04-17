cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.27.0"
  sha256 arm:   "de1a00b3dc554542a84d5fd479606488671dd73db07dd94a5797ad644c7e5c1a",
         intel: "ad606943c33f394f37e41582c7bf6eae5d33c443cb3d77c2367062317d7ba217"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.20.0"
  sha256 arm:  "6df48caac5bc09e4e4690c272e5013cba3f24e8e6524133a8d92dcf40ca8d65f,"
         intel: "d0481587937ad80fff251c5636df0506b69bf7efe3a83478f1df9132b7c02408"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

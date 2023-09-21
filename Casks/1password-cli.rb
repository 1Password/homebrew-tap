cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.21.0"
  sha256 arm: "55f7d9e99b8e2d4e0e193b2f0275501e6d9c1ebd29cadbea6a0da48a8587e3e0,"
         intel: "6e81ac0d9f7f2dbc4dc1e3ed71c02790a7b874ceb36e79432a03ea084b291820"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

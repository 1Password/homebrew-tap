cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.21.0"
   sha256 arm: "6df48caac5bc09e4e4690c272e5013cba3f24e8e6524133a8d92dcf40ca8d65f,"
         intel: "6e81ac0d9f7f2dbc4dc1e3ed71c02790a7b874ceb36e79432a03ea084b291820"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

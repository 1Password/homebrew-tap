cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.21.0"
  sha256 arm: "1de120081d7a7d278fdc6c619a4ce15d691bc535c2d2aa494d975bc3463c6a33"
         intel: "6e81ac0d9f7f2dbc4dc1e3ed71c02790a7b874ceb36e79432a03ea084b291820"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

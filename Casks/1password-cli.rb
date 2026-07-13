cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.35.0"
  sha256 arm:   "6dcb9528c1ace2f18f7808418afe5dd58ed1376038aa4f907af7e0462582712b",
         intel: "174ed82e76002a0589aed0996fe068d8cdee9997e6b9b3acee409cdc4862cd3e"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

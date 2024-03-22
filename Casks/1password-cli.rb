cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.26.1"
  sha256 arm:   "13b4de15dbde273be9ecf8a96689eb0b2579ba81ec8dea0f6bd58972bc97f740",
         intel: "75534626ad70647b4eafbbf60baa9d6aabc6f743f22616e545f6807253c1eaab"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

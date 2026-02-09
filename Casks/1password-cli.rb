cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.32.1"
  sha256 arm:   "fcf1038da5d1030c87e3382553a875638f17e19204874bed0034382ce2dfd4b8",
         intel: "6469797129d9e70129aac1828893a53ef535be3c7d4bd1e235498b8d78d6a4eb"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

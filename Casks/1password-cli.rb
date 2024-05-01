cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.28.0"
  sha256 arm:   "8bedcb7276b41525afa323123e1416074e91f76449671d5b6b109ffc9acb8e2d",
         intel: "683686aa023221e7ff59773878cbbdbfc1044036a66e8d41229c0d12ff80e038"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

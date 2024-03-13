cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.25.1"
  sha256 arm:   "1de5bf453f7ed7fdbe940f39b6d027ebfa2aaf0dabc07f9b4afd4e658eb79bab",
         intel: "0a9c7da62212916635b2737a9e1567201eb18bceb4ea8bab9a80366ae25e5475"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

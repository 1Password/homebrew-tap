cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.29.0"
  sha256 arm:   "47266a82cefd6c2f7c2dbbdc9e76e02787b30ca805836339520f5a9e8638f395",
         intel: "dbf58df691478106f43509fe43bf2c0d6c88dc2896f494da0e0a5d8ab7facdfd"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

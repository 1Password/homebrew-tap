cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.30.0"
  sha256 arm:   "c01638037abccc0746d0db73f3a24f9d9afe2cb81403fb10b195976a25cbc576",
         intel: "c01638037abccc0746d0db73f3a24f9d9afe2cb81403fb10b195976a25cbc576"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

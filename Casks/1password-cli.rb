cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.38.1"
  sha256 arm:   "027996374724375f7aa199cfff0443c722e0b42d0787ba96714c6499462c70c8",
         intel: "62d9c01c7a7f85f2aa614f0c5dfe42b4dc3254fe361425d4668f5dc12721f39c"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

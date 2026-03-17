cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.33.0"
  sha256 arm:   "e7a4fdb33254b20f6721df46bf81f25ebf6e7f190183c6830619f90655eb35cb",
         intel: "de0910cce4f646434ecd97c8d07e60a92b4e19f187b01698332461bdfae549b2"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end

cask "1password-cli" do
  version "2.7.2"
  sha256 "a4bdfd57d00ed838c271695e72d79330270105955bdd15e627cc24e60c85a238"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end

cask "mfcommander" do
  version "0.5.1"
  sha256 "2fc648ea09021dd38ed4a9884b4b86f0a24e99f1196277c334a6979a6fbee3fb"

  url "https://github.com/mfsoft-dev/mfcommander-dist/releases/download/v#{version}/MFCommander-#{version}.dmg"
  name "MFCommander"
  desc "Native dual-pane file workspace for huge files and infrastructure"
  homepage "https://mfsoft.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MFCommander.app"
end

cask "mfcommander" do
  version "0.5.2"
  sha256 "04199697c561fa771126602344f87f91f473c41c35f40f6fae326ec9138204ad"

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

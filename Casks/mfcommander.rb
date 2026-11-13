cask "mfcommander" do
  version "0.6.0"
  sha256 "e36083fbf9fada793e03dd60add57500945400055962c14887fd0ec1f9ec77dc"

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

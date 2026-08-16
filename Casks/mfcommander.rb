cask "mfcommander" do
  version "0.2.1"
  sha256 "990f187129f343f5f9ff3cea5d55ea6f4a90cbfeff3d3495cca4d1e6333c19cb"

  url "https://github.com/mfsoft-dev/mfcommander-dist/releases/download/v#{version}/MFCommander-#{version}.dmg",
      verified: "github.com/mfsoft-dev/"
  name "MFCommander"
  desc "Native dual-pane file workspace for huge files and infrastructure"
  homepage "https://www.mfsoft.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MFCommander.app"
end

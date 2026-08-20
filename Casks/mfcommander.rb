cask "mfcommander" do
  version "0.2.5"
  sha256 "4b3d0aef9351e8ad4e6b98b0d0da131be531a0988ac9362142431e82e43176f8"

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

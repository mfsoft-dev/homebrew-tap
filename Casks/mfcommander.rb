cask "mfcommander" do
  version "0.2.10"
  sha256 "91cf54813e6b8787fa6059911063ce949dd60c45480e13715c2fd47c97917d8d"

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

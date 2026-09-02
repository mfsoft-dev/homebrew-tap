cask "mfcommander" do
  version "0.2.6"
  sha256 "b25e4e8d224ec7301c09498f1548c61b82c280a14065908bf9ec3861b22637fb"

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

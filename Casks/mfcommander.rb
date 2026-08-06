cask "mfcommander" do
  version "0.1.2"
  sha256 "fa71493392c5baefdd01387f5fddec40122dee8a6776679f7a815149bc7bd421"

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

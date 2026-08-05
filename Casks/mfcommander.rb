cask "mfcommander" do
  version "0.1.0"
  sha256 "8b2aeb9acc26b8c215c3a3868b2c546d384d0764e05996ed8e293f64a23628fc"

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

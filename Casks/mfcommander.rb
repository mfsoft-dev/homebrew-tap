cask "mfcommander" do
  version "0.1.7"
  sha256 "09c4235112ad030dd12ee3364defb418d9dc97a0deff8fa0bd363f01d240f780"

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

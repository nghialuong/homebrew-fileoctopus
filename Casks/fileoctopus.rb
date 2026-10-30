cask "fileoctopus" do
  version "1.0.7"
  sha256 "6ec058a702f24cf071e8ae91ffde659197b796bebdd80bc99c2e3af970f6878f"

  url "https://github.com/nghialuong/fileoctopus-releases/releases/download/v#{version}/FileOctopus-#{version}.dmg"
  name "FileOctopus"
  desc "File manager with split panes, workspaces and fast search"
  homepage "https://www.fileoctopus.com/"

  livecheck do
    url "https://www.fileoctopus.com/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "FileOctopus.app"

  zap trash: [
    "~/Library/Application Support/FileOctopus",
    "~/Library/Caches/com.nghialuong.fileoctopus",
    "~/Library/HTTPStorages/com.nghialuong.fileoctopus",
    "~/Library/Preferences/com.nghialuong.fileoctopus.plist",
    "~/Library/Saved Application State/com.nghialuong.fileoctopus.savedState",
  ]
end

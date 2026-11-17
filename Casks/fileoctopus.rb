cask "fileoctopus" do
  version "1.1.2"
  sha256 "70d6732b5ff3d9b5d780dd898db12ccc0f31e484ddaa68121a63247956d8b645"

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

cask "patchprobe" do
  version "1.0.0"
  sha256 "dbef77e4d4f5acfa2f57e37a4d8a5841571f81ceac56c3d61ba810468e35437a"

  url "https://github.com/Patchbay-s/PatchProbe/releases/download/v#{version}/PatchProbe_#{version}_macos-aarch64.dmg"
  name "PatchProbe"
  desc "Local network host and service scanner"
  homepage "https://github.com/Patchbay-s/PatchProbe"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "PatchProbe.app"

  zap trash: [
    "~/Library/Application Support/com.patchbay.patchprobe",
    "~/Library/Caches/com.patchbay.patchprobe",
    "~/Library/WebKit/com.patchbay.patchprobe",
  ]
end

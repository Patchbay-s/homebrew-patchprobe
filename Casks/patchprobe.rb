cask "patchprobe" do
  version "0.1.0"
  sha256 "25506431127a89299c8fd1b3ed5750171ab4d632a53e8f69850f4fe6543f88f5"

  url "https://github.com/Patchbay-s/PatchProbe/releases/download/v#{version}/PatchProbe_#{version}_aarch64.dmg"
  name "PatchProbe"
  desc "Local network host and service scanner"
  homepage "https://github.com/Patchbay-s/PatchProbe"

  depends_on arch: :arm64
  depends_on :macos

  app "PatchProbe.app"

  caveats <<~EOS
    This Apple silicon build is unsigned and not notarized. On first launch,
    Control-click PatchProbe.app in Finder, choose Open, and confirm the prompt.
  EOS
end

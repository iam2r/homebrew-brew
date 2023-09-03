cask "one-switch" do
    version "1.31"
    sha256 no_check

    url "https://drive.usercontent.google.com/download?id=1lp6wDfrMrYU-jSCYgFtwMpMOStUCya3Y&export=download&authuser=0&confirm=t&uuid=40381826-9f02-49d8-8bf7-cf4e4a4ab55f&at=APZUnTXh4hVEUbaiNiBuVQKsuC37:1693740286934"
    name "One Switch"
    desc "All system and utility switches in one place"
    homepage "https://fireball.studio/oneswitch"
    
    depends_on macos: ">= :catalina"
  
    app "One Switch.app"
  
    zap trash: [
      "~/Library/Application Support/One Switch",
      "~/Library/Application Support/studio.fireball.OneSwitch",
      "~/Library/Caches/studio.fireball.OneSwitch",
      "~/Library/HTTPStorages/studio.fireball.OneSwitch",
      "~/Library/HTTPStorages/studio.fireball.OneSwitch.binarycookies",
      "~/Library/Preferences/studio.fireball.OneSwitch.plist",
      "~/Library/WebKit/studio.fireball.OneSwitch",
    ]
  end
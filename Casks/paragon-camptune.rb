cask "paragon-camptune" do
    version "10.13.433"
    sha256 :no_check
  
    url "https://proxy.cf.181918.xyz/drive.usercontent.google.com/download?id=1A2WGwFRhGQR3OMcM5Pg6unw5Xg6OV1PJ&export=download&authuser=0&confirm=t&uuid=8be2247e-0ed8-449e-b55e-6ccf9d1fd8c5&at=APZUnTViPY0XUEWJf4t6u3pEzlDS%3A1720069281633"
    name "Paragon CampTune"
    desc "Manage disk space on Macs with Boot Camp"
    homepage "https://www.paragon-software.com/home/camptune/"
  
    depends_on macos: ">= :sierra"
  
    app "Paragon CampTune.app"
  
    uninstall delete: [
                "/Library/Application Support/Paragon Software/com.paragon-software.camptunex.helper",
                "/Library/Application Support/Paragon Software/com.paragon-software.camptunex.helper-data",
                "/Library/Application Support/Paragon Software/uc.camptunex",
              ],
              rmdir:  "/Library/Application Support/Paragon Software/"
  
    zap trash: [
      "~/Library/Application Support/com.paragon-software.camptunex",
      "~/Library/HTTPStorages/com.paragon-software.camptunex",
      "~/Library/Preferences/com.paragon-software.camptunex.plist",
      "~/Library/Saved Application State/com.paragon-software.camptunex.savedState",
    ]
  end
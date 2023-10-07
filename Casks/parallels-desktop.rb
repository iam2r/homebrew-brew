cask "parallels-desktop" do


    version "18.1.1"
    sha256 :no_check
  
    url "https://drive.usercontent.google.com.proxy.iamrazo.pro/download?id=1zlkvIcGQJOCqii8TFECz-5-s3TMJD8Xb&export=download&authuser=0&confirm=t&uuid=bb848eb5-c088-491c-bda4-9301b07411fb&at=APZUnTXLO92Psv3kd4J8LqL_n-aT:1696646192101"

    name "Parallels Desktop"
    desc ""
  
    app "Parallels Desktop.app"
  
    zap trash: [
        "~/Library/Caches/com.parallels.desktop.console",
        "~/Library/Preferences/com.parallels.desktop.console"
    ]
  end
  

  

cask "parallels" do
    version "18.1.1"
    sha256 :no_check

    url "https://drive.usercontent.google.com.proxy.iamrazo.pro/download?id=1zlkvIcGQJOCqii8TFECz-5-s3TMJD8Xb&export=download&authuser=0&confirm=t&uuid=bb848eb5-c088-491c-bda4-9301b07411fb&at=APZUnTXLO92Psv3kd4J8LqL_n-aT:1696646192101"
    name "Parallels Desktop"
    desc "Desktop virtualization software"
    homepage "https://www.parallels.com/products/desktop/"

    livecheck do
    url "https://kb.parallels.com/129860"
    regex(/<h2[^>]*?>[^<]*?(\d+(?:\.\d+)+)(?:\s*|&nbsp;)\((\d+)\)/i)
    strategy :page_match do |page, regex|
        page.scan(regex).map { |match| "#{match[0]}-#{match[1]}" }
    end
    end

    conflicts_with cask: [
    "homebrew/cask-versions/parallels18",
    ]

    app "Parallels Desktop.app"

    preflight do
    system_command "chflags",
                    args: ["nohidden", "#{staged_path}/Parallels Desktop.app"]
    system_command "xattr",
                    args: ["-d", "com.apple.FinderInfo", "#{staged_path}/Parallels Desktop.app"]
    end

    postflight do
    system_command "#{appdir}/Parallels Desktop.app/Contents/MacOS/inittool",
                    args: ["init"],
                    sudo: true
    end

    uninstall_preflight do
    set_ownership "#{appdir}/Parallels Desktop.app"
    end

    uninstall delete: [
                "/usr/local/bin/prl_convert",
                "/usr/local/bin/prl_disk_tool",
                "/usr/local/bin/prl_perf_ctl",
                "/usr/local/bin/prlcore2dmp",
                "/usr/local/bin/prlctl",
                "/usr/local/bin/prlexec",
                "/usr/local/bin/prlsrvctl",
                "/Library/Preferences/Parallels",
            ],
            signal: ["TERM", "com.parallels.desktop.console"]

    zap trash: [
        "~/.parallels_settings",
        "~/Applications (Parallels)",
        "~/Library/Application Scripts/*.com.parallels.Desktop",
        "~/Library/Application Scripts/com.parallels.desktop*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.parallels.desktop.console.sfl*",
        "~/Library/Caches/com.apple.helpd/Generated/com.parallels.desktop.console.help*",
        "~/Library/Caches/com.parallels.desktop.console",
        "~/Library/Caches/Parallels Software/Parallels Desktop",
        "~/Library/Containers/com.parallels.desktop*",
        "~/Library/Group Containers/*.com.parallels.Desktop",
        "~/Library/Logs/parallels.log",
        "~/Library/Parallels/Applications Menus",
        "~/Library/Parallels/Parallels Desktop",
        "~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist",
        "~/Library/Preferences/com.parallels.desktop.console.plist",
        "~/Library/Preferences/com.parallels.Parallels Desktop Events.plist",
        "~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist",
        "~/Library/Preferences/com.parallels.Parallels Desktop.plist",
        "~/Library/Preferences/com.parallels.Parallels.plist",
        "~/Library/Preferences/com.parallels.PDInfo.plist",
        "~/Library/Preferences/Parallels",
        "~/Library/Saved Application State/com.parallels.desktop.console.savedState",
        ],
        rmdir: [
        "/Users/Shared/Parallels",
        "~/Library/Caches/Parallels Software",
        "~/Library/Parallels",
        "~/Parallels",
        ]
end
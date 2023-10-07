cask "parallels-desktop" do


    version "18.1.1"
    sha256 :no_check
  
    url "https://doc-0g-bo-docs.googleusercontent.com/docs/securesc/6r95gaaitengab4bt4npsb919582fqtf/1ddjkt38svv411om8tgfh73s83ek6tgp/1696644525000/05306238515941299303/05306238515941299303/1zlkvIcGQJOCqii8TFECz-5-s3TMJD8Xb?e=download&ax=AA75yW49QIhoeQbOoUzlypcV5Y9STZSQAInboRuCMvjoBvOTBHRIx_A1k-qq56ghoELXtTB7BNAWH4-kDySHNzlXY2zfgdm3ukPb0391IJCof00MJGinuf-PMKtLPXD8AAQ3MusTSYXpKX71_4_CDljyXWi9WOgFloaV6SfLrAHgF7aQwhXPf4LDb3_VJjTi5GOCfLP064_gJzdfw4671XvoUC3dEbG09_3cxIZG5fPk15OqN4RtbeqSep5EwMxMnlyIW8sy9KNB3JA_YFWlrC5q3VwknE6rQ3VWP8_-Ym6aPL7BZa_5eSNgyt0kH-fmcm89N_-CgrcF8c-5WT4zzOUd2AgRrFfhDtqZP6dvyCiEOp9FcSLDpbKT4eATPKWNybh02zde1Xir9Uy4uyDpkjxSCDddTwC-J7tEzd9e-VnCKCJCTk2sNTAIL2y_n0QSNF7y-Ds_sR7DDVaU_bf65p5BmvctJM88wD-tNT0dlTNN0AuPyFvaxBjzv6sMtqFXYkR9fr2iFarmW3HOMSdVFNd5uqnxHj0Hq7aVj8bBm-h1WA3B8O6TUGVoPRWAdopEUjeOkYl-XkkSeVEDl06JNU6dHLDi0AAgahg7aS_CdEau8VsLMcpW9fjY29GkA4yYxQwNOnkSXg-psKAew7bFdT5rW8JEZIZ7JJOeyrUUFJdpsW_G_Sxsxzfz07Nv-wEtHDVNnwHvifNEKyQaCUtowY_eHScuFjPRuSohstFIjexa-pXDH3VRXJzyVJOEHOzZnhIyzZl-RGetqm0g_Lf7tmjSa_BvQqHG3dU-8i7mn9N2-IIrTjkyQ6TbFTBjB-i8_1vqiDz1EqfyoXffkydyhmVLdp1sIE9iqsGLs8VYGDdL6dCgBob_HzkLMAw79AgKjYcg9g&uuid=01a2cba9-e195-4295-b055-af00e508a5c5&authuser=0&nonce=9qq4n369sqgag&user=05306238515941299303&hash=kpmqp5tue8sr1bd8d5itrj6q2k9hmvrk"

    name "Parallels Desktop"
    desc ""
  
    app "Parallels Desktop.app"
  
    zap trash: [
        "~/Library/Caches/com.parallels.desktop.console",
        "~/Library/Preferences/com.parallels.desktop.console"
    ]
  end
  
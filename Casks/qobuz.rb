cask 'qobuz' do
  version :latest
  sha256 :no_check

  url 'https://static.qobuz.com/apps/qobuz-desktop/osx/QobuzDesktopInstaller.pkg'
  name 'Qobuz Desktop'
  homepage 'https://www.qobuz.com/applications'

  pkg 'QobuzDesktopInstaller.pkg'

  uninstall pkgutil: 'com.qobuz.QobuzDesktop.*'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.qobuz.qobuzdesktop.sfl*',
               '~/Library/Application Support/QobuzDesktop',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/com.qobuz.QobuzDesktop',
               '~/Library/Caches/com.qobuz.QobuzDesktop',
               '~/Library/Logs/QobuzDesktop',
               '~/Library/Preferences/com.qobuz.QobuzDesktop.plist',
             ]
end

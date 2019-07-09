#!/bin/sh
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi
echo "Stopping running Zoom processes"
killall -9 zoom.us
killall -9 ZoomOpener
echo "Removing main application directory"
rm -rf /Applications/zoom.us.app
echo "Removing zoom home directory"
rm -rf ~/.zoomus
echo "Removing application support"
rm -rf ~/Library/Application\ Support/zoom.us
echo "Removing application caches"
rm -rf ~/Library/Caches/us.zoom.xos
echo "Removing logs"
rm -rf ~/Library/Logs/zoom.us
echo "Removing preferences"
rm ~/Library/Preferences/us.zoom.xos.plist

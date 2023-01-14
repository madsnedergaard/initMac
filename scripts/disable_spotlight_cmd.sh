#!/bin/bash

set -e

# target output for AppleSymbolicHotKeys:64
#
# <key>64</key>
# <dict>
#   <key>enabled</key>
#   <false/>
#   <key>value</key>
#   <dict>
#     <key>parameters</key>
#     <array>
#       <integer>65535</integer>
#       <integer>49</integer>
#       <integer>1048576</integer>
#     </array>
#     <key>type</key>
#     <string>standard</string>
#   </dict>
# </dict>

/usr/libexec/PlistBuddy ~/Library/Preferences/com.apple.symbolichotkeys.plist \
  -c "Delete :AppleSymbolicHotKeys:64" \
  -c "Add :AppleSymbolicHotKeys:64:enabled bool false" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters array" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters: integer 65535" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters: integer 49" \
  -c "Add :AppleSymbolicHotKeys:64:value:parameters: integer 1048576" \
  -c "Add :AppleSymbolicHotKeys:64:type string standard"

# target output for AppleSymbolicHotKeys:65
#
# <key>65</key>
# <dict>
#   <key>enabled</key>
#   <false/>
#   <key>value</key>
#   <dict>
#     <key>parameters</key>
#     <array>
#       <integer>65535</integer>
#       <integer>49</integer>
#       <integer>1572864</integer>
#     </array>
#     <key>type</key>
#     <string>standard</string>
#   </dict>
# </dict>

/usr/libexec/PlistBuddy ~/Library/Preferences/com.apple.symbolichotkeys.plist \
  -c "Delete :AppleSymbolicHotKeys:65" \
  -c "Add :AppleSymbolicHotKeys:65:enabled bool false" \
  -c "Add :AppleSymbolicHotKeys:65:value:parameters array" \
  -c "Add :AppleSymbolicHotKeys:65:value:parameters: integer 65535" \
  -c "Add :AppleSymbolicHotKeys:65:value:parameters: integer 49" \
  -c "Add :AppleSymbolicHotKeys:65:value:parameters: integer 1572864" \
  -c "Add :AppleSymbolicHotKeys:65:type string standard"
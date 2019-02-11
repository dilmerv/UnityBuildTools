#!/bin/bash
echo "Copying provisioning profile..."
cp ./embedded.provisionprofile ./YOUR_GAME_NAME.app/Contents/
cp ./info.plist ./YOUR_GAME_NAME.app/Contents/
echo "Starting Signing..."

codesign -f --deep -s "3rd Party Mac Developer Application: Dilmer Valecillos" --entitlements "./YOUR_GAME_NAME.entitlements" ./YOUR_GAME_NAME.app/Contents/Frameworks/MonoEmbedRuntime/osx/libmono.0.dylib
codesign -f --deep -s "3rd Party Mac Developer Application: Dilmer Valecillos" --entitlements "./YOUR_GAME_NAME.entitlements" ./YOUR_GAME_NAME.app/Contents/Frameworks/MonoEmbedRuntime/osx/libMonoPosixHelper.dylib
codesign -f --deep -s "3rd Party Mac Developer Application: Dilmer Valecillos" --entitlements YOUR_GAME_NAME.entitlements "./YOUR_GAME_NAME.app/"

echo "Done Signing..."

echo "Packaging game..."
productbuild --component "./YOUR_GAME_NAME.app" "/Applications" --sign "3rd Party Mac Developer Installer: YOUR_DEVELOPER_NAME" YOUR_GAME_NAME.pkg

# Unity Build Tools

This repository includes utilities to help when building and uploading Unity3d Mac Games to the Mac App Store. 

Review the following notes before cloning the repository:

1. Watch the YouTube video explaining step by step process first
2. Replace YOUR_GAME_NAME.entitlements with your game name
3. Replace YOUR_GAME_NAME.provisionprofile with your downloaded version of the provisioning profile created as described in the video
4. Build your Unity3d game and place YOUR_GAME_NAME.app in the same directory where SignGame.sh resides
4. Replace all instances of YOUR_GAME_NAME in the SignGame.sh file
5. Open the terminal and execute .\SignGame.sh which will sign and generate a .pkg file
6. Open Application Loader version 3.0 as described in the video to upload your new .pkg file
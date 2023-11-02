# WWW Flutter Dash Inside resource

***official [Dash Inside](https://www.dash-inside.com) development team resource***

## Setting up Flutter project
- Clone or download source code
- Run `flutter pub get` to install the missing Flutter dependencies.
- Run `flutter run` to launch the application. Press "R" in the terminal, then refresh the page to see your changes appear.

## Developing in the Codespace
- In the ports view, port 3000 should be listed there already. Right click on it, and, under "Port Visibility", select "Public". This is important so the app can access services on your client from other server ports without getting blocked due to CORS.
- Run `./run.sh` in the terminal to start the app. A notification will appear saying that an app opened on port 3000.
- That's it!

> When you're not using your codespace, deactivate it by going to [Codespaces](https://github.com/codespaces), pressing the 3 dots on the right side of the codespace, and pressing "Stop codespace". You can also deactivate it within the codespace by pressing "Codespaces" at the bottom left of VS Code and selecting "Stop Current Codespace". Provided that you're under the storage limit (15 GB for Free and 20 GB for Pro), you won't be charged if your codespace is offline.

> Edited files in your workspace are not deleted when stopping the codespace and the container won't need to be rebuilt when you start it again. Provided that you're under the storage limit (15 GB for Free users and 20 GB for Pro), you won't be charged if your codespace is offline. I recommend committing your repository changes on your codespace often to avoid losing work if you were to delete your codespace.

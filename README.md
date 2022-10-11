directly from https://forums.thecookie.dev/t/remotion-newest-remotelog-spammer/4714

# What is this?
Remotion is a remote log spammer that can spam **(almost, not guaranteed/tested)** any remote logger! Good for the games that depend on using remote events/remote functions

Exploiters using remote logs may get lagged out, depending which remote spy they're using
And if they're using one of those print remote spies, then It'll be impossible.

# Can't exploiters just delete the script??
Remotion's server script will automatically check if an exploiter has deleted the spammer script. If it detects it then it will automatically kick the player! (by last fired time)
# How do I install this?
You can install the ROBLOX module into your game, and then
you can run this code in:
```lua
require(game:GetService("Workspace").RemotionLoaderAsset.RemotionLoader):Initiate()
-- make sure remotion is parented into your workspace
```
Remotion will automatically parent the client/server script so you don't have to do
much hard work to implement remotion into your game!
https://www.roblox.com/library/11240288452/Remotion
## Well, Isn't there a reinstall option?
Well, yes. Remotion's installer will check for any other remotion scripts and will automatically delete it if it finds the script.
## What if I don't want to run the require every time?
That's fine, Because we have a simple plugin that will automatically check for Remotion and load it into your game!
https://www.roblox.com/library/11240366961/RemotionPlugin

# Wrap Up

## Github
Here is the github containing all of the sourcecode.
https://github.com/DogeeDev/Remotion
## Other stuff
I will try my best to answer anybody with any questions (in the thread comments).

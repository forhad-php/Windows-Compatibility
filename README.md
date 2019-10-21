# Windows 10 Keyboard Shortcuts and Run Commands :

| Shortcut | For |
|-|-|
<kbd>WIN</kbd> + <kbd>.</kbd> | Windows emoji panel
<kbd>WIN</kbd> + <kbd>1,2,3...</kbd> | Favorite Program
<kbd>WIN</kbd> + <kbd>E</kbd> | FIle Explorer
<kbd>ALT</kbd> + <kbd>Tab</kbd> | Switch Windows
<kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>TAB</kbd> | Switch Windows Freeze
<kbd>WIN</kbd> + <kbd>Tab</kbd> | Multitasking View
<kbd>WIN</kbd> + <kbd>CTRL</kbd> + <kbd>→</kbd> or  + <kbd>←</kbd> | Switch Virtual Desktops
<kbd>WIN</kbd> + <kbd>←</kbd> or <kbd>↑</kbd> or <kbd>→</kbd> or <kbd>↓</kbd> | Split Screen


# Run Command <kbd>Win</kbd> + <kbd>r</kbd>

| Command | For |
|-|-|
| `msinfo32` | System Information
| `.` | This single dot opens the current user’s home folder
| `charmap` | Special characters panel
| `control` | Control Panel
| `appwiz.cpl` | Programs and Features
| `services.msc` | List of Run Commands
| `sysdm.cpl` | System Properties
| `systempropertiesadvanced` | Environment Variables
| `desktop` | Desktop Folder
| `write` or `wordpad` | WordPad

# Registry Hacks | <kbd>Win</kbd> + <kbd>r</kbd> `regedit`

### Remove the OneDrive Button from the File Explorer →
<kbd>CTRL</kbd> + <kbd>F</kbd> : `{018D5C66-4533` <br>
Value Name: System.IsPinnedToNameSpaceTree <br>
Value Data: 0 <br>
Full Path: `Computer\HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}`

### Add Your Own Apps to the Context Menu →
Full Path: `Computer\HKEY_CLASSES_ROOT\Directory\Background\shell`
> * Under the "shell" folder right-click and create a new key called "Pixie"
> * Under the "Pixie" folder create a new key called "command"
> * In the "command" key folder right-click the "Default" string, then in the Value box paste the app location "F:\pixie.exe"
> * Under the "Pixie" folder create a "String Value" called "Icon" and paste the icon location "F:\pixie.exe"
*Open with Cmder*
> * Now we need to create a dynamic path to open **Cmder** with existing folder, then in the Value box paste the app location  "C:\cmder\Cmder.exe /start %v"
> * And for the icon, Cmder has a nice collection of icons. We can pick yellow one from them "C:\cmder\icons\cmder_yellow.ico"

### Disable Windows Startup Delay
Full Path: Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer
> * Right-click on “Explorer,” and then select “Key” from the “New” option. Once the new key is created, rename it “Serialize”
> * If the “Serialize” key is already created under the “Explorer” key, then there is no need to go through the above process. After that right-click on “Serialize” and select “DWORD Value” from the “New” option. The DWORD Value key will be created in the panel on the right. Rename this key to “StartupDelayInMSec,” and make sure its value is set to “0.” Now you should notice a tiny boost in Windows startup time.

# Browser Shortcuts

| Shortcut | For |
|-|-|
<kbd>CTRL</kbd> + <kbd>E</kbd> | Search

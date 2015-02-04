#Hathway Autologin

This script just logs in hathway broadband whenever hathway automatically logs out.

##Installation

Follow the below instructions, as it is, for this to work. If you are an expert then you can install it as you want.

- Copy `hathway_autologin.sh` to your home folder
- Open `hathway_autologin.sh` and replace it with your hathway username and password, remove {} around the placeholders
- Run `chmod +x hathway_autologin.sh`
- Run `sudo crontab -e` and choose 2 for nano editor
- Paste the line `*/1 * * * * /home/$user/$script 1>> /home/ 2>> /home/$user/hathway_autologin.log` to the bottom of the file

##Notes

- Replace $user in the last step of installation to your system username
- crontab will add a task to the system scheduler that runs this script every 1 minute to check if it needs to login
- This will work only on *NIX based systems but if you want this to work on Windows based systems, best of luck.

##Support

- Please send in your requests by opening an issue on Github.

[![Analytics](https://ga-beacon.appspot.com/UA-59356916-1/hathway-autologin/readme.md)](https://github.com/bhargav3/hathway-autologin)

Visicut settings
================

Settings for [VisiCut](https://github.com/t-oster/VisiCut) (A userfriendly tool to prepare, save and send Jobs to Lasercutters) used by the FAU FabLab.

Instructions
------------

 * Delete all settings before you clone this repo:
    
    ```bash
    rm -rf ~/.visicut/
    ```

 * Clone the repo to .visicut:
    
    ```bash
    git clone git@github.com:fau-fablab/visicut-settings.git .visicut
    ```


 * To update the settings run:

    ```bash
    cd ~/.visicut
    git pull
    ```

 * Before you commit changes, please check the settings by running
    `git diff`
   and
    `git status`
  inside the repository. Check also, that the settings are working properly.

*  Then add and commit everything:
    
    ```bash
    git add -A
    git commit -A
    ```

"Insider info"
--------------

Because of frequent broken visicam settings, we do a daily `git checkout` for devices/Epilog_95_Zing_95_Fablab.xml to get fine visicam settings.

Pushing from ws01 does not work directly, but you can add it as a remote on your own machine:

```bash
git remote add ws01 MYUSERNAME@ws01.lab.fablab.uni-erlangen.de:/home/fablab/.visicut
git pull ws01 master
git push origin master
```

Visicut settings
================

Settings for [VisiCut](https://github.com/t-oster/VisiCut) (A userfriendly tool to prepare, save and send Jobs to Lasercutters) used by the FAU FabLab.

![Supported Materials](laserprofiles/)
-----------------------------------

this table is not up-to-date!

| Material                  | Thickness   | Cut       | Engrave   | Engrave deep  | Engrave 3D  | Mark      | Bend      |
|---------------------------|-------------|:---------:|:---------:|:-------------:|:-----------:|:---------:|:---------:|
| Acryl                     | 1.5mm       |✓          |✗          |✗              |✗            |✗          |✓          |
|                           | 2.0mm       |✓          |✓          |✗              |✗            |✓          |✗          |
|                           | 3.0mm       |✓          |✓          |✓              |✓            |✓          |✗          |
|                           | 4.0mm       |✓          |✗          |✗              |✗            |✗          |✗          |
|                           | 5.0mm       |✓          |✗          |✗              |✗            |✗          |✗          |
|                           | 6.0mm       |✓          |✓          |✗              |✗            |✗          |✗          |
|                           | 8.0mm       |✓          |✓          |✗              |✗            |✗          |✗          |
|                           | 12.0mm      |✓          |✓          |✗              |✗            |✗          |✗          |
| Balsaholz                 | 2.0mm       |✓          |✓          |✗              |✗            |✓          |✗          |
| Dynamask Lötstopplaminat  | 0.1mm       |✗          |✓          |✗              |✗            |✗          |✗          |
| Edelstahlblech            | 0.1mm       |✓          |✗          |✗              |✗            |✗          |✗          |
| Faserholz Buche           | 3.0mm       |✓          |✓          |✗              |✗            |✓          |✗          |
| Filz                      | 3.0mm       |✓          |✗          |✗              |✗            |✗          |✗          |
| Finnpappe                 | 2.0mm       |✓          |✓          |✗              |✗            |✓          |✗          |
| Fotokarton                | 0.5mm       |✓          |✗          |✗              |✗            |✗          |✗          |
| Graupappe                 | 3.0mm       |✓          |✗          |✗              |✗            |✗          |✗          |
| HDF                       | 3.0mm       |✓          |✓          |✗              |✗            |✗          |✗          |
|                           | 5.0mm       |✓          |✓          |✗              |✗            |✗          |✗          |
| Holz Birke                | 4.0mm       |✓          |✓          |✓              |✗            |✗          |✗          |
| Holz Kiefer               | 4.0mm       |✓          |✓          |✓              |✗            |✗          |✗          |
| Holz Nussbaum             | 5.0mm       |✓          |✓          |✓              |✗            |✗          |✗          |
| Kerzenverzierwachs        | 0.5mm       |✓          |✗          |✗              |✗            |✓          |✗          |
| Kromapappe                | 1.5mm       |✗          |✗          |✗              |✗            |✓          |✗          |
| Metall (Cermark)          | 0.0mm       |✓          |✓          |✗              |✗            |✗          |✗          |
| Metall (pulverlackiert)   | 0.0mm       |✗          |✓          |✗              |✗            |✗          |✗          |
| Moosgummi                 | 3.0mm       |✓          |✗          |✗              |✗            |✗          |✗          |
| Mylar                     | 0.0mm       |✓          |✓          |✗              |✗            |✗          |✗          |
| Papier                    | 80g         |✓          |✗          |✗              |✗            |✗          |✗          |
| Sperrholz Gabun           | 3.0mm       |✓          |✓          |✗              |✗            |✗          |✗          |
|                           | 4.0mm       |✓          |✓          |✓              |✗            |✓          |✗          |
| Stempelgummi              | 2.0mm       |✓          |✗          |✗              |✗            |✗          |✗          |
| Thermostreifen (FAU Card) | 0.1mm       |✗          |✓          |✗              |✗            |✗          |✗          |
| Wellpappe                 | 3.0mm       |✓          |✗          |✗              |✗            |✗          |✗          |

```Attention: For some profiles there are only the default settings of Power: 20, Speed 100```

![Mappings](mappings/)
--------------------

* schneide_32_rot_44__32_graviere_32_Rest_44__32_ignoriere_32_blau_44__32_markiere_32_gr_252_n.xml
  * cut red, engrave all other colors, ignore blue, mark green

![Profiles](profiles/)
--------------------

* bend
* cut
* engrave
* engrave3d
* engrave 3d
* engrave deep
* mark

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

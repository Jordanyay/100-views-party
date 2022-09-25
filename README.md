# 100 Views Party - A Minecraft: Java Edition 1.19.2 Data/Resource pack

![100_views_party_repository_banner.png](https://github.com/Jordanyay/100-views-party/blob/main/res/repository_banner/100_views_party_repository_banner.png)

This data/resource pack was created by me to thank the community for helping me gain 100 views on my YouTube channel! This datapack adds 2 new craftable items which the player can have fun and mess around with. Each item includes unique functionalities that can bring any party to life!

## Table of Contents
- [Video Showcase](#video-showcase)
- [Items](#items)
  - [Party Horn](#party-horn)
  - [Party Hat](#party-hat)
- [Obtaining the Items](#obtaining-the-items)
  - [Crafting](#crafting)
    - [Party Horn](#party-horn-1)
    - [Party Hat](#party-hat-1)
  - [Give Function](#give-function)
- [Installation](#installation)
  - [1. Obtaining the Data/Resource Pack](#1-obtaining-the-dataresource-pack)
    - [Downloading the Repository as a ZIP File](#downloading-the-repository-as-a-zip-file)
    - [Cloning the Repository With Git](#cloning-the-repository-with-git)
  - [2. Locating the Minecraft Game Directory](#2-locating-the-minecraft-game-directory)
    - [Game Directory Locations Per Operating System](#game-directory-locations-per-operating-system)
      - [Windows](#windows)
      - [Mac](#mac)
      - [Linux](#linux)
  - [3. Copying/Moving the Repository Content](#3-copyingmoving-the-repository-content)
    - [Datapack](#datapack)
    - [Resource Pack](#resource-pack)

## Video Showcase
(WILL BE ADDED AS SOON AS I FIGURE OUT HOW TO ADD IT!)

## Items
### Party Horn
**Celebrate by making some noise!**

![party_horn.gif](https://github.com/Jordanyay/100-views-party/blob/main/res/showcase_gifs/party_horn.gif)

**Features:**
- 5 custom sound effects which are randomly played when right-clicking with the party horn in hand.
- Visual feedback in first-person whenever the party horn is used.
- A splash of confetti whenever the party horn is used! Weeeee!

### Party Hat
**Celebrate in style!**

![party_hat.gif](https://github.com/Jordanyay/100-views-party/blob/main/res/showcase_gifs/party_hat.gif)

**Features:**
- Can be equipped to an empty head slot by right-clicking with the party hat in hand.
- A custom 3D model: Not just an item texture sitting on your head!

## Obtaining the Items
### Crafting
Item crafting can be achieved by dropping an adequate amount of each item from a crafting recipie onto the same block. For each item recipie to execute successfully, the items must be on the ground and relatively close to one another.

The tables below list the required items and the quantity of each item for each of the crafting recipies:

#### Party Horn:
| Items:      | Count:|
| :---:       | :---: |
| blue dye    | 1     |
| magenta dye | 1     |
| paper       | 5     |
| slime ball  | 1     |

#### Party Hat:
| Items:      | Count:|
| :---:       | :---: |
| blue dye    | 1     |
| magenta dye | 1     |
| paper       | 4     |
| pink wool   | 1     |
| slime ball  | 1     |

### Give Function
If a player has sufficient permissions, they can obtain both items with the following command:

```mcfunction
function jordanyay:100_views_party/give_items
```

## Installation

Installing this data/resource pack should be fairly similar across operating systems, but locating the necessary directories will vary. Listed below are some steps to help you get this pack installed on Windows, Mac and Linux.

### 1. Obtaining the Data/Resource Pack
In order to install the data/resource pack, we will first need the contents of this repository. The two main ways you can do this that I would recommend are:

#### Downloading the Repository as a ZIP File:

By far the easiest way to get the contents of this repository would be to download it as a ZIP file. To do this, simply left-click the green button at the top right of this page labled "Code" and in the dropdown menu, select "Download ZIP".

![download_as_zip.png](https://github.com/Jordanyay/100-views-party/blob/main/res/installation_guide/download_as_zip.png)

Once the file has downloaded, extract the contents of the ZIP file with an archiving tool of your choice.

#### Cloning the Repository With Git:

If you're comfortable with working at the command line and have Git installed on your system, you can run the following command to clone the contents of this repository to a specific directory:
```
git clone https://github.com/Jordanyay/100-views-party.git /YOUR/PATH/HERE
```

### 2. Locating the Minecraft Game Directory

Now that we have the content downloaded/extracted, we can now copy/move the content to the appropriate locations in order to get the packs functioning properly. Before we can do this, we first need to find the Minecraft game directory (this is where your world saves and resource packs are stored).

**Please note:** If you've created a custom game directory for a particular profile in your launcher and wish to use it instead of the default game directory, feel free to do so.

#### Game Directory Locations Per Operating System:

Each operating system has their own default location where they store the Minecraft game directory, instructions for finding these locations on Windows, Mac and Linux are listed below:

#### Windows:

On your keyboard, press the (Windows) + (R) keys and paste the following line into the input field that appears:
```
%appdata%\.minecraft
```
Once the line has been pasted, press the (Enter) key.

#### Mac:

Open the Finder application and paste the following line into the input field that appears:
```
~/Library/Application Support/minecraft
```
Once the line has been pasted, press the (Enter) key.

#### Linux:

Open a file explorer and find the `.minecraft` directory within your `$HOME` directory:
```
/home/USERNAME/.minecraft/
```
If you don't see the `.minecraft` directory, you may need to enable hidden file visibility in the file explorer you are using.

### 3. Copying/Moving the Repository Content

Lastly, we will be copying/moving the content from the repository we saved earlier.

**Please note:** The following steps can also be similarly applied to a server, although I will not go into the finer details here as I have very little experience working with servers.

Open the saved repository and locate the `/src/` directory, inside this directory should be two subdirectories, each one either ending in "datapack" or "resource_pack" respectively. Listed below are the locations within your Minecraft game directory which these two subdirectories will be copied or moved to:

#### Datapack:

**Please note:** If you decide to add this datapack to a world, there's some questions you should ask yourself before making any modifications:
- Will people be happy if I add this datapack to our shared world?
- Will this datapack conflict with another pre-existing datapack that's currently in use?
- Will the world's performance be hit when adding this datapack due to the nature of the world's content? E.g., the world has a lot of entities.

From what I've tested this datapack should behave properly, however, adding/removing this datapack to or from a world could still lead to unforseen consequences/breakage, with this in mind, be sure not use this datapack in a world you really care about, e.g., your main survival world you've spent many hours playing on.

If you do decide to remove these data/resource packs from a world, any in-game modifications/items will still unfortunately be leftover.
```
/MINECRAFT-GAME-DIRECTORY/saves/YOUR-WORLD/datapacks/
```
If you're creating a new world, you can add the datapack to the world at the world creation screen by clicking the "datapacks" button and adding/enabling the pack there.

If the datapack isn't working in-game, double-check that the pack is available and enabled with the following commands:
```mcfunction
datapack list available
datapack list enabled
```
If the datapack isn't enabled but is available, you can enable it with the following command:
```mcfunction
datapack enable "file/100 Views Party"
```
#### Resource Pack:
```
/MINECRAFT-GAME-DIRECTORY/resourcepacks/
```

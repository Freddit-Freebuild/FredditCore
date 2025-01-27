- [Freebuild](#freebuild)
  - [Plugins](#plugins)
- [Survival](#survival)
  - [Plugins](#plugins-1)

# Freebuild

- Server port: `25565` (Minecraft default)
- Minecraft version: `1.21.3`
- Paper version: `1.21.3-65`
- Hosted on: `Hetzner Dedicated Server`

## Plugins

When updating server plugins, make sure to note **A)** the latest version of the plugin (Server version), and **B)**, the latest version of Minecraft supported by the version of the plugin used (i.e., update the plugin, and if it works on the server, increment the Minecraft version number).

| Plugin name                                                      |  Minecraft   |        Plugin version | Notes |
|:---------------------------------------------------------------- | ------------:| ---------------------:|:-----:|
| [BannerMaker](https://www.spigotmc.org/resources/4380/)          |     `1.21.3` |               `2.4.0` |       |
| [BKCommonLib](https://www.spigotmc.org/resources/39590/)         |     `1.21.3` |     `v1.20.6-v1-1749` |       |
| [ChatReaction](https://www.spigotmc.org/resources/3748/)         |     `1.21.3` |               `1.8.0` |       |
| [Citizens 2](https://ci.citizensnpcs.co/job/citizens2/)          |     `1.21.3` |       `2.0.36-b3637 ` |       |
| [CoreProtect](https://www.spigotmc.org/resources/8631/)          |     `1.21.3` |                `2.22` |       |
| [DiscordSRV](https://www.spigotmc.org/resources/18494/)          |     `1.21.3` |              `1.29.0` |       |
| [Dynmap](https://www.spigotmc.org/resources/274/)                |     `1.21.3` |          `3.7-beta-7` |  (1)  |
| [EpicRename](https://www.spigotmc.org/resources/4341/)           |     `1.21.3` |                `3.12` |       |
| [EssentialsX](https://www.spigotmc.org/resources/9089/)          |     `1.21.3` |          `2.21.0-dev` |       |
| [EssentialsXChat](https://www.spigotmc.org/resources/9089/)      |     `1.21.3` |          `2.21.0-dev` |       |
| [EssentialsXProtect](https://www.spigotmc.org/resources/9089/)   |     `1.21.3` |          `2.21.0-dev` |       |
| [EssentialsXSpawn](https://www.spigotmc.org/resources/9089/)     |     `1.21.3` |          `2.21.0-dev` |       |
| [FastAsyncWorldEdit](https://www.spigotmc.org/resources/13932/)  |     `1.21.3` | `2.11.1-SNAPSHOT-831` |       |
| [goBrush](https://www.spigotmc.org/resources/23118/)             |     `1.21.3` |            `3.8.0-79` |       |
| [GSit](https://www.spigotmc.org/resources/62325/)                |     `1.21.3` |              `1.11.2` |       |
| [ImageFrame](https://www.spigotmc.org/resources/106031/)         |     `1.21.3` |              `1.7.11` |       |
| [LPC](https://www.spigotmc.org/resources/68965/)                 |     `1.21.3` |               `3.6.0` |  (2)  |
| [MyWorlds](https://www.spigotmc.org/resources/39594/)            |     `1.21.3` |      `v1.20.6-v1-294` |       |
| [PlaceholderAPI](https://www.spigotmc.org/resources/6245/)       |     `1.21.3` |              `2.11.6` |  (3)  |
| [PrefiX](https://www.spigotmc.org/resources/70359/)              |     `1.21.3` |                 `7.2` |       |
| [PsudoCommands](https://www.spigotmc.org/resources/83535/)       |     `1.21.3` |              `1.0.37` |       |
| [ServerlistMOTD](https://dev.bukkit.org/projects/serverlistmotd) |    *`1.21.3` |       `vX-2021-11-23` |       |
| [ShulkerPacks](https://www.spigotmc.org/resources/67466/)        |     `1.21.3` |               `1.6.4` |       |
| [Skript](https://www.spigotmc.org/resources/skript.114544/)      |     `1.21.3` |               `2.9.0` |  (4)  |
| [TAB](https://www.spigotmc.org/resources/57806/)                 |     `1.21.3` |               `4.1.6` |       |
| [WorldGuard](https://enginehub.org/worldguard)                   |     `1.21.3` |         `7.0.11-beta` |       |

**(1)**: **Dynmap**: Writes map files to `/var/www/map.freddit.net` (https://map.freddit.net)
**(2)**: **LPC**: Luckperms Chat Formatting  
**(3)**: **PlaceholderAPI**: If names show up as `%essentials_nickname%` in chat, make sure the Essentials placeholder addon is installed (`/papi ecloud download Essentials`)
**(4)**: **Skript**: Used for `/fredditsurvival`

# Survival

- Server port: `25665`
- Minecraft version: `1.21`
- Paper version: `1.21-83`
- Hosted on: `Hetzner Dedicated Server`

## Plugins

| Plugin name                                                    |  Minecraft |       Plugin version |          Notes          |
|:-------------------------------------------------------------- | ----------:| --------------------:|:-----------------------:|
| [ChestSort](https://www.spigotmc.org/resources/59773/)         |     `1.21` |             `14.2.0` |      `1.21` support     |
| [CoreProtect](https://www.spigotmc.org/resources/8631/)        |     `1.21` |               `22.4` |      `1.21` support     |
| [DiscordSRV](https://www.spigotmc.org/resources/18494/)        |     `1.21` |             `1.29.0` |      `1.21` support     |
| [EntitySize](https://www.spigotmc.org/resources/16497/)        |     `1.21` |                `1.2` |                         |
| [EssentialsX](https://www.spigotmc.org/resources/9089/)        |     `1.21` |         `2.21.0-dev` |      `1.21` support     |
| [EssentialsXChat](https://www.spigotmc.org/resources/9089/)    |     `1.21` |         `2.21.0-dev` |      `1.21` support     |
| [EssentialsXProtect](https://www.spigotmc.org/resources/9089/) |     `1.21` |         `2.21.0-dev` |      `1.21` support     |
| [EssentialsXSpawn](https://www.spigotmc.org/resources/9089/)   |     `1.21` |         `2.21.0-dev` |      `1.21` support     |
| [GSit](https://www.spigotmc.org/resources/62325/)              |     `1.21` |               `1.13` |      `1.21` support     |
| [Lasso](https://www.spigotmc.org/resources/54815/)             | ⚠️`1.20.4` |               `1.11` | no `1.20.6` support yet |
| [LPC](https://www.spigotmc.org/resources/68965/)               |     `1.21` |              `3.6.0` |           (1)           |
| [LuckPerms](https://www.spigotmc.org/resources/28140/)         |     `1.21` |            `5.4.131` |      `1.21` support     |
| [MineSpawners](https://www.spigotmc.org/resources/113429/)     |     `1.21` |                `1.8` |     works on `1.21`     |
| [NoChatReports](https://www.spigotmc.org/resources/102931/)    |     `1.21` |              `1.0.5` |      `1.21` support     |
| [PlaceholderAPI](https://www.spigotmc.org/resources/6245/)     |     `1.21` |             `2.11.6` |           (2)           |
| [Pl3xMap](https://modrinth.com/plugin/pl3xmap)                 |     `1.21` |         `1.20.6-499` |           (3)           |
| [PrefiX](https://www.spigotmc.org/resources/70359/)            |     `1.21` |                `7.2` |      `1.21` support     |
| [ProtocolLib](https://www.spigotmc.org/resources/1997/)        |     `1.21` |     `5.3.0-SNAPSHOT` |      `1.21` support     |
| [RHEasyCrops](https://www.spigotmc.org/resources/86956/)       |     `1.21` |            `1.20_R5` |      `1.21` support     |
| [ShulkerPacks](https://www.spigotmc.org/resources/67466/)      |     `1.21` |              `1.6.4` |      `1.21` support     |
| [Stress](https://www.spigotmc.org/resources/79374/)            |     `1.21` |              `1.0.3` |                         |
| [TAB](https://www.spigotmc.org/resources/57806/)               |     `1.21` |              `5.0.4` |      `1.21` support     |

**(1)**: **LPC**: Luckperms Chat Formatting  
**(2)**: **PlaceholderAPI**: If names show up as `%essentials_nickname%` in chat, make sure the Essentials placeholder addon is installed (`/papi ecloud download Essentials`)  
**(3)**: **Pl3xMap**: Writes map files to `var/www/survivalmap.freddit.net` (https://survivalmap.freddit.net)
**(4)**: **Skript**: Used for `/fredditfreebuild`

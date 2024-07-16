- [Freebuild](#freebuild)
  - [Plugins](#plugins)
- [Survival](#survival)
  - [Plugins](#plugins-1)

# Freebuild

- Server port: `25565` (Minecraft default)
- Minecraft version: `1.20.4` / `1.20.6` (Rebuild)
- Paper version: `1.20.4-409` / `1.20.6-148` (Rebuild)
- Hosted on: `Hetzner Dedicated Server` (Rebuild)

## Plugins

When updating server plugins, make sure to note **A)** the latest version of the plugin (Server version), and **B)**, the latest version of Minecraft supported by the version of the plugin used (i.e., update the plugin, and if it works on the server, increment the Minecraft version number).

| Plugin name                                                      |  Minecraft |        Plugin version | Notes |
|:---------------------------------------------------------------- | ----------:| ---------------------:|:-----:|
| [BannerMaker](https://www.spigotmc.org/resources/4380/)          |   `1.20.6` |               `2.4.0` |       |
| [BKCommonLib](https://www.spigotmc.org/resources/39590/)         |   `1.20.6` |     `v1.20.6-v1-1749` |       |
| [ChatReaction](https://www.spigotmc.org/resources/3748/)         |   `1.20.6` |               `1.8.0` |       |
| [Citizens 2](https://ci.citizensnpcs.co/job/citizens2/)          |   `1.20.6` |       `2.0.35-b3473 ` |       |
| [CoreProtect](https://www.spigotmc.org/resources/8631/)          |   `1.20.6` |                `2.22` |       |
| [DiscordSRV](https://www.spigotmc.org/resources/18494/)          |   `1.20.6` |              `1.27.0` |       |
| [Dynmap](https://www.spigotmc.org/resources/274/)                |   `1.20.6` |    `3.7-SNAPSHOT-948` |  (1)  |
| [EpicRename](https://www.spigotmc.org/resources/4341/)           |   `1.20.6` |                `3.12` |       |
| [EssentialsX](https://www.spigotmc.org/resources/9089/)          |   `1.20.6` |          `2.21.0-dev` |       |
| [EssentialsXChat](https://www.spigotmc.org/resources/9089/)      |   `1.20.6` |          `2.21.0-dev` |       |
| [EssentialsXProtect](https://www.spigotmc.org/resources/9089/)   |   `1.20.6` |          `2.21.0-dev` |       |
| [EssentialsXSpawn](https://www.spigotmc.org/resources/9089/)     |   `1.20.6` |          `2.21.0-dev` |       |
| [FastAsyncWorldEdit](https://www.spigotmc.org/resources/13932/)  |   `1.20.6` | `2.11.1-SNAPSHOT-831` |       |
| [goBrush](https://www.spigotmc.org/resources/23118/)             |   `1.20.6` |            `3.8.0-79` |       |
| [GSit](https://www.spigotmc.org/resources/62325/)                |   `1.20.6` |               `1.9.5` |       |
| [ImageFrame](https://www.spigotmc.org/resources/106031/)         |   `1.20.6` |               `1.7.9` |       |
| [LPC](https://www.spigotmc.org/resources/68965/)                 |   `1.20.6` |               `3.6.0` |  (2)  |
| [MyWorlds](https://www.spigotmc.org/resources/39594/)            |   `1.20.6` |      `v1.20.6-v1-294` |       |
| [PlaceholderAPI](https://www.spigotmc.org/resources/6245/)       |   `1.20.6` |              `2.11.6` |  (3)  |
| [PrefiX](https://www.spigotmc.org/resources/70359/)              |   `1.20.6` |                 `7.2` |       |
| [PsudoCommands](https://www.spigotmc.org/resources/83535/)       | ⚠️`1.20.4` |              `1.0.35` |       |
| [ServerlistMOTD](https://dev.bukkit.org/projects/serverlistmotd) |  *`1.20.6` |       `vX-2021-11-23` |       |
| [ShulkerPacks](https://www.spigotmc.org/resources/67466/)        |   `1.20.6` |               `1.6.4` |       |
| [Skript](https://www.spigotmc.org/resources/skript.114544/)      |   `1.20.6` |               `2.8.7` |  (4)  |
| [TAB](https://www.spigotmc.org/resources/57806/)                 |   `1.20.6` |               `4.1.6` |       |
| [WorldGuard](https://enginehub.org/worldguard)                   |   `1.20.6` |              `7.0.10` |       |

**(1)**: **Dynmap**: Writes map files to `/var/www/map.freddit.net` (https://map.freddit.net)
**(2)**: **LPC**: Luckperms Chat Formatting  
**(3)**: **PlaceholderAPI**: If names show up as `%essentials_nickname%` in chat, make sure the Essentials placeholder addon is installed (`/papi ecloud download Essentials`)
**(4)**: **Skript**: Used for `/fredditsurvival`

# Survival

- Server port: `25665`
- Minecraft version: `1.20.6`
- Paper version: `1.20.6-147`
- Hosted on: `Hetzner Dedicated Server`

## Plugins

| Plugin name                                                    |  Minecraft |       Plugin version |          Notes          |
|:-------------------------------------------------------------- | ----------:| --------------------:|:-----------------------:|
| [ChestSort](https://www.spigotmc.org/resources/59773/)         |   `1.20.6` |             `14.1.0` |      `1.21` support     |
| [CoreProtect](https://www.spigotmc.org/resources/8631/)        |   `1.20.6` |               `22.4` |      `1.21` support     |
| [DiscordSRV](https://www.spigotmc.org/resources/18494/)        |   `1.20.6` |             `1.27.0` |      `1.21` support     |
| [EntitySize](https://www.spigotmc.org/resources/16497/)        |   `1.20.6` |                `1.2` |                         |
| [EssentialsX](https://www.spigotmc.org/resources/9089/)        |   `1.20.6` |     `2.21.0-dev+102` |      `1.21` support     |
| [EssentialsXChat](https://www.spigotmc.org/resources/9089/)    |   `1.20.6` |     `2.21.0-dev+102` |      `1.21` support     |
| [EssentialsXProtect](https://www.spigotmc.org/resources/9089/) |   `1.20.6` |     `2.21.0-dev+102` |      `1.21` support     |
| [EssentialsXSpawn](https://www.spigotmc.org/resources/9089/)   |   `1.20.6` |     `2.21.0-dev+102` |      `1.21` support     |
| [GSit](https://www.spigotmc.org/resources/62325/)              |   `1.20.6` |              `1.9.5` |      `1.21` support     |
| [Lasso](https://www.spigotmc.org/resources/54815/)             | ⚠️`1.20.4` |               `1.11` | no `1.20.6` support yet |
| [LPC](https://www.spigotmc.org/resources/68965/)               |   `1.20.6` |              `3.6.0` |           (1)           |
| [LuckPerms](https://www.spigotmc.org/resources/28140/)         |   `1.20.6` |            `5.4.131` |      `1.21` support     |
| [MineSpawners](https://www.spigotmc.org/resources/113429/)     |   `1.20.6` |                `1.8` |     works on `1.21`     |
| [NoChatReports](https://www.spigotmc.org/resources/102931/)    |   `1.20.6` |              `1.0.5` |      `1.21` support     |
| [PlaceholderAPI](https://www.spigotmc.org/resources/6245/)     |   `1.20.6` |             `2.11.6` |           (2)           |
| [Pl3xMap](https://modrinth.com/plugin/pl3xmap)                 |   `1.20.6` |         `1.20.6-499` |           (3)           |
| [PrefiX](https://www.spigotmc.org/resources/70359/)            |   `1.20.6` |                `7.2` |      `1.21` support     |
| [ProtocolLib](https://www.spigotmc.org/resources/1997/)        |   `1.20.6` | `5.3.0-SNAPSHOT-723` |      `1.21` support     |
| [RHEasyCrops](https://www.spigotmc.org/resources/86956/)       |   `1.20.6` |            `1.20_R5` |      `1.21` support     |
| [ShulkerPacks](https://www.spigotmc.org/resources/67466/)      |   `1.20.6` |              `1.6.4` |      `1.21` support     |
| [Skript](https://www.spigotmc.org/resources/skript.114544/)    |   `1.20.6` |              `2.8.7` |           (4)           |
| [Stress](https://www.spigotmc.org/resources/79374/)            |   `1.20.6` |              `1.0.3` |                         |
| [TAB](https://www.spigotmc.org/resources/57806/)               |   `1.20.6` |              `4.1.6` |      `1.21` support     |

**(1)**: **LPC**: Luckperms Chat Formatting  
**(2)**: **PlaceholderAPI**: If names show up as `%essentials_nickname%` in chat, make sure the Essentials placeholder addon is installed (`/papi ecloud download Essentials`)  
**(3)**: **Pl3xMap**: Writes map files to `var/www/survivalmap.freddit.net` (https://survivalmap.freddit.net)
**(4)**: **Skript**: Used for `/fredditfreebuild`
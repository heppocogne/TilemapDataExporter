# TilemapDataExporter
Godot addon to export TimeMap data to resource file
![](https://github.com/heppocogne/TilemapDataExporter/blob/master/screenshot.png)

# Descriptions
This addon adds Import/Export buttons to TileMap's editor inspector. You can export TileMapData as resource file and import them.  
This addon is useful when you want to copy chunk of tiles or you need to place tiles dynamically.

# Usage (how to place tiles from code)
```GDScript
var tiles=load("res://map/objects/small_house.tres")
tiles.place_on_tilemap(tilemap,house_position,override_flag)
```

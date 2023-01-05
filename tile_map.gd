extends TileMap

var tiles_1:TileMapData
var tiles_2:TileMapData
var tiles_3:TileMapData
var tiles_plus:TileMapData
var tiles_equal:TileMapData

var display:=112


func _ready():
	tiles_1=preload("res://tiles/1.tres")
	tiles_2=preload("res://tiles/2.tres")
	tiles_3=preload("res://tiles/3.tres")
	tiles_plus=preload("res://tiles/+.tres")
	tiles_equal=preload("res://tiles/=.tres")
	
	tiles_1.place_on_tilemap(self,Vector2(0,0))
	tiles_plus.place_on_tilemap(self,Vector2(8,0))
	tiles_equal.place_on_tilemap(self,Vector2(24,0))


func _on_Timer_timeout():
	if display==112:
		tiles_2.place_on_tilemap(self,Vector2(0,0))	# do not replace 1
		tiles_1.place_on_tilemap(self,Vector2(16,0),true)
		tiles_2.place_on_tilemap(self,Vector2(32,0),true)
		display=123
	elif display==123:
		tiles_2.place_on_tilemap(self,Vector2(0,0))	# do not replace 1
		tiles_2.place_on_tilemap(self,Vector2(16,0),true)
		tiles_3.place_on_tilemap(self,Vector2(32,0),true)
		display=112

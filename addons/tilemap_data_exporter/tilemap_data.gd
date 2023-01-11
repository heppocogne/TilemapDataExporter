class_name TileMapData
extends Resource

# id:PoolVector2Array
export var _map:Dictionary


func _init():
	_map={}


func set_cell(x:int,y:int,tile:int):
	set_cellv(Vector2(x,y),tile)


func set_cellv(cell:Vector2,tile:int):
	if !_map.has(tile):
		_map[tile]=PoolVector2Array();
	var v:PoolVector2Array=_map[tile]
	v.push_back(cell)
	_map[tile]=v


func get_cell(x:int,y:int)->int:
	return get_cellv(Vector2(x,y))


func get_cellv(cell:Vector2)->int:
	for id in _map:
		for v in _map[id]:
			if v==cell:
				return id
	return -1


func get_rect()->Rect2:
	var rect:Rect2

	for id in _map:
		for v in _map[id]:
			rect.expand(v)
	
	return rect


func get_size()->Vector2:
	return get_rect().size


func place_on_tilemap(target:TileMap,origin:Vector2=Vector2.ZERO,overwrite:bool=false,overwritable_tiles:Array=[]):
	for id in _map:
		for v in _map[id]:
			var curretnt_cell:=target.get_cellv(v+origin)
			if overwrite or curretnt_cell==-1 or overwritable_tiles.has(curretnt_cell):
				target.set_cellv(v+origin,id)

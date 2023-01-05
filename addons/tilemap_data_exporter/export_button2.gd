tool
extends Button

var tilemap_data:TileMapData


func _on_ExportButton2_pressed(tilemap:TileMap):
    print("_on_ExportButton2_pressed")
    tilemap_data=TileMapData.new()
    var rect:=tilemap.get_used_rect()
    for y in range(rect.position.y,rect.size.y):
        for x in range(rect.position.x,rect.size.x):
            tilemap_data.set_cell(x,y,tilemap.get_cell(x,y))
    
    $FileDialog.popup_centered(Vector2(600,400))


func _on_FileDialog_file_selected(path:String):
    if ResourceSaver.save(path, tilemap_data)==OK:
        print("saved to ",path)
    else:
        print("faild to save")

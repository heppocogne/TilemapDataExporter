tool
extends EditorInspectorPlugin


func can_handle(object: Object)->bool:
	return object is TileMap


func parse_begin(object:Object):
	var buttons:Control=preload("res://addons/tilemap_data_exporter/buttons.tscn").instance()

	var exp_btn:Button=buttons.get_node("ExportButton")
	exp_btn.connect("pressed",exp_btn,"_on_ExportButton_pressed",[object])

	var exp_btn2:Button=buttons.get_node("ExportButton2")
	exp_btn2.connect("pressed",exp_btn2,"_on_ExportButton2_pressed",[object])

	var imp_btn:=buttons.get_node("ImportButton")
	imp_btn.connect("pressed",imp_btn,"_on_ImportButton_pressed",[object])

	add_custom_control(buttons)

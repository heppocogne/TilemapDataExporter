tool
extends EditorPlugin

var inspector_plugin:EditorInspectorPlugin=preload("res://addons/tilemap_data_exporter/inspector_plugin.gd").new()


func _enter_tree():
	add_inspector_plugin(inspector_plugin)


func _exit_tree():
	remove_inspector_plugin(inspector_plugin)

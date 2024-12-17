extends Node2D

@onready var tile_map: TileMap
@onready var troll: CharacterBody2D

class ExampleScript1:
	var tile_ids_array: Array = []
##signal tile_ids_ready


func _ready():
	# Get all nodes in the "tilemapfloor" group
	var tilemap_nodes = get_tree().get_nodes_in_group("tilemapfloor")
	for node in tilemap_nodes:
		# Check if the current node is a TileMap
		if node.is_class("TileMap"):
			tile_map = node
	# Get all nodes in the "Troll" group
	var troll_nodes = get_tree().get_nodes_in_group("Troll")
	for node in troll_nodes:
		# Check if the current node is a KinematicBody2D
		if node.is_class("CharacterBody2D"):
			troll = node
	var size = tile_map.get_used_rect()
	var number_of_columns = size.size.x
	var number_of_rows = size.size.y
	troll.position = Vector2(number_of_columns / 2, number_of_rows / 2)
	var tile_ids = []
	for i in range(number_of_columns):
		for j in range(number_of_rows):
			tile_ids.append(tile_map.get_cell(i, j))
	return tile_ids

	##emit_signal("tile_ids_ready")
	
	

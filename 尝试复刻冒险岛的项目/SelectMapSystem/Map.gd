extends Node2D

func _on_TempleOfTime_button_down():
	print('select succres')
	get_tree().change_scene("res://NoviceVillage/NoviceVillage.tscn")

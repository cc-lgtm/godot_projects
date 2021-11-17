extends Node2D

func switchRole(role):
	var ROLE_ARR = ['RoleImg1', 'RoleImg2', 'RoleImg3']
	var current_role = str(role).split(':')[0]
	for r in ROLE_ARR:
		if current_role == r:
			role.visible = true
		else:
			get_node(r).visible = false

func _on_warrior_button_down():
	print('I selection Warrior')
	switchRole($RoleImg1)

func _on_Mage_button_down():
	print('I selection Mage')
	switchRole($RoleImg2)

func _on_Assassin_button_down():
	print('I selection Assassion')
	switchRole($RoleImg3)

func _on_GotoGame_button_down():
	get_tree().change_scene("res://SelectMapSystem/Map.tscn")

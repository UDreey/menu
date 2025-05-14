extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_inicar_pressed() -> void:
	get_tree().change_scene_to_file("jogo") 
	#colocar o caminho da primeira fase do jogo


func _on_creditos_pressed() -> void:
	get_tree().change_scene_to_file("creditos") 
	#Colocar caminho da cena dos creditos


func _on_sair_do_jogo_pressed() -> void:
	get_tree().quit()
	

func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/menu_config.tscn")

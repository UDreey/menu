extends CanvasLayer


@onready var continuar_jogo: Button = $menu_holder/Continuar_Jogo

func _ready() -> void:
	visible = false


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true	
		continuar_jogo.grab_focus()



func _process(delta: float) -> void:
	pass


func _on_sair_do_jogo_pressed() -> void:
	get_tree().quit()


func _on_continuar_jogo_pressed() -> void:
	get_tree().paused = false
	visible = false


func _on_config_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Cenas/menu_inicial.tscn")

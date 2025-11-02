extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	game_manager.add_point()
	animation_player.play("pickup")  # Remove coin from scene

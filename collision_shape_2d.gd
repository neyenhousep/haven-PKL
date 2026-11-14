extends CollisionShape2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

extends CollisionBody2D
@export var speed: float = 30

func _physics_process(delta: float) -> void:
	move_and_slide()
	if is_on_wall() or is_on_floor():
		velocity = velocity.reflect(get_wall_normal())

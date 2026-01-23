extends Label


func show_label_temporarily(_duration: float):
    await get_tree().create_timer(17.15).timeout  
    self.visible = true
#    $Label.show() # Or $Label.visible = true
    await get_tree().create_timer(23.27-17.15).timeout
    self.visible = false
#    $Label.hide() # Or $Label.visible = false

func _ready() -> void:
    self.visible = false
#    $Label.visible = false
    show_label_temporarily(17.15)

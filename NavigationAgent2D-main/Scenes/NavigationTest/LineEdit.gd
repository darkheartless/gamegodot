extends LineEdit

@onready var message_label = get_node("MessageLabel")
@onready var timer = $Timer
@onready var chat_history = get_node("chat_history")
@onready var chat_display = get_node("chat_display")
@onready var animatechat = get_node("animatechat")

var chat_array = []


func _on_LineEdit_text_entered(text: String):
	if text != "":
		chat_display.clear()
		chat_display.text += text 
		chat_history.text += text + "\n"
		set_text("")

func _on_timer_timeout():
	message_label.text = ""











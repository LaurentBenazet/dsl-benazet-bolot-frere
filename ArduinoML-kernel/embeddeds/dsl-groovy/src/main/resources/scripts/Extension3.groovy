package scripts

sensor "joystick" onPin 11
sensor "button" onPin 12
actuator "led" pin 9

state "off" means "led" becomes "low"
state "joystickClick" means "led" becomes "low"
state "buttonClick" means "led" becomes "low"

initial "off"

from "off" to "joystickClick" when "joystick" becomes "high"
from "off" to "buttonClick" when "button" becomes "high"

from "joystickClick" to "off" when "joystick" becomes "low"
from "buttonClick" to "off" when "button" becomes "low"

err 3 on "led" when "button" becomes "high" and "joystick" becomes "high"


export "Switch!"

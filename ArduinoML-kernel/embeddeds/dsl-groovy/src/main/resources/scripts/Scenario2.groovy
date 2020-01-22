package scripts

sensor "button" onPin 12
sensor "joystick" onPin 11
actuator "led" pin 9

state "on" means "led" becomes "high"
state "off" means "led" becomes "low"
state "joystickClick" means "led" becomes "low"
state "buttonClick" means "led" becomes "low"

initial "off"

from "off" to "joystickClick" when "joystick" becomes "high"
from "off" to "buttonClick" when "button" becomes "high"

from "joystickClick" to "on" when "button" becomes "high"
from "buttonClick" to "on" when "joystick" becomes "high"

from "on" to "joystickClick" when "button" becomes "low"
from "on" to "buttonClick" when "joystick" becomes "low"

from "joystickClick" to "off" when "joystick" becomes "low"
from "buttonClick" to "off" when "button" becomes "low"

export "Switch!"
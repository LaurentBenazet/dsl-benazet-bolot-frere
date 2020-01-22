package scripts

sensor "button" onPin 12
actuator "buzzer" pin 8
actuator "led" pin 9

state "off" means "buzzer" becomes "low" and "led" becomes "low"
state "buzz" means "buzzer" becomes "high" and "led" becomes "low"
state "light" means "buzzer" becomes "low" and "led" becomes "high"

initial "off"

from "off" to "buzz" when "button" becomes "high"
from "buzz" to "light" when "button" becomes "high"
from "light" to "off" when "button" becomes "high"

export "Switch!"
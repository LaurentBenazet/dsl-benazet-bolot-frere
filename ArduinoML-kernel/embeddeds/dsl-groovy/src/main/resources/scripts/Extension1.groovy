package scripts

sensor "button" onPin 12
actuator "led" pin 9

frequency 0.5

state "off" means "led" becomes "low"
state "on" means "led" becomes "high"

initial "off"

from "off" to "on" when "button" becomes "high" frequency 0.2
from "on" to "off" when "button" becomes "low" frequency

export "Switch!"
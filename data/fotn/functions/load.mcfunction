# Staggered init sequence to prevent lag
schedule function fotn:init/timers 1t replace
schedule function fotn:init/misc 5t replace
schedule function fotn:init/bossbars 10t 
schedule function fotn:init/utils 15t replace

schedule function fotn:init/end_init 20t replace
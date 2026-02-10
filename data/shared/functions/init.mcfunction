# Create a scoreboard to toggle bounties on/off
scoreboard objectives add bounty_active dummy "Bounty Status"

# Initialize Wilson's status to 0 (off)
scoreboard players set Wilson bounty_active 0

# Blood Moon Event
scoreboard objectives add event_timer dummy
scoreboard objectives add cows_alive dummy
scoreboard objectives add blood_moon_timer dummy
# Android-PIN-Bruteforce

# Configuration files
## config           This file defines the default configuration values. These values can be overriden by using commandline options.
## config.default   This file is a copy of the default config. Copy this over the config file to restore the defaults.

## PIN_TYPE can be set to PATTERN or PIN.
## This is equivalent to -t, --type TYPE commandline options
PIN_TYPE=PIN

## PIN_LENGTH can be set to a number
## It is equivalent to the -l, --length NUM commandline option
PIN_LENGTH=4

# Timing
## DELAY_BETWEEN_KEYS is the period of time in seconds to wait after each key is sent
DELAY_BETWEEN_KEYS=0.25

## COOLDOWN_TIME is the period of time in seconds to wait after N attempts is reached, by default after 5 attempts it pauses for 30 seconds
COOLDOWN_TIME=30

## COOLDOWN_AFTER_N_ATTEMPTS is how many attemps to make before waiting for the COOLDOWN_TIME 
COOLDOWN_AFTER_N_ATTEMPTS=5

## PROGRESSIVE_COOLDOWN can be set to 1 for enabled or 0 disabled. When enabled, after 10 attempts it changes the COOLDOWN_AFTER_N_ATTEMPTS to 1.
PROGRESSIVE_COOLDOWN=0

## COOLDOWN_TIME_AFTER_EACH_PIN is the period of time in seconds to wait after every PIN attempt in seconds. It is disabled if set to 0.
COOLDOWN_TIME_AFTER_EACH_PIN=0

## KEYS_BEFORE_EACH_PIN configures the keys that are sent to prompt the lock screen to appear. This is sent before each PIN.
## By default it sends "escape enter", but some phones will respond to other keys.

# Examples:
# KEYS_BEFORE_EACH_PIN="ctrl_escape enter"
# KEYS_BEFORE_EACH_PIN="escape space"
KEYS_BEFORE_EACH_PIN="escape enter"

## KEYS_STAY_AWAKE_DURING_COOLDOWN the keys that are sent during the cooldown period to keep the phone awake
KEYS_STAY_AWAKE_DURING_COOLDOWN="enter"

## SEND_KEYS_STAY_AWAKE_DURING_COOLDOWN_EVERY_N_SECONDS how often the keys are sent, in seconds
SEND_KEYS_STAY_AWAKE_DURING_COOLDOWN_EVERY_N_SECONDS=5

## DELAY_BEFORE_STARTING is the period of time in seconds to wait before the bruteforce begins
DELAY_BEFORE_STARTING=2
## KEYS_BEFORE_STARTING configures the keys that are sent before the bruteforce begins
KEYS_BEFORE_STARTING="enter"

# Resume
## RESUME_FROM_PIN sets the PIN that you resume cracking from.
## This is equivalent to setting the -f, --from PIN commandline option
RESUME_FROM_PIN=

# Input and Output
## LOG is the filename of a log file
LOG=bruter.log

# Exiting
## EXIT_AFTER_FAIL_COUNT controls when it will exit after reaching a threshold of errors when trying to send keys.
EXIT_AFTER_FAIL_COUNT=15

# Operating System Environment
KEYBOARD_DEVICE=/dev/hidg0
## The location of HID_KEYBOARD may be different if you are not using Kali Net Hunter
HID_KEYBOARD=/system/xbin/hid-keyboard
USB_DEVICES=/usr/bin/usb-devices

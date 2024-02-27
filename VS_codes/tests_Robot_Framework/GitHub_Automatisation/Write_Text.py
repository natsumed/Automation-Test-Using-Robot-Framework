import pyautogui
import time





# Type the file path character by character
text = 'openwrt/openwrt'
pyautogui.typewrite(text, interval=0.05)

# Delay for 1 second
time.sleep(1)

# Press the Enter key
pyautogui.press('enter')

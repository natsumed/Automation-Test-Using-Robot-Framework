import pyautogui
import time

# Type the file path character by character
file_path = 'openwrt-ipq'
pyautogui.typewrite(file_path, interval=0.05)

# Delay for 1 second
time.sleep(1)
pyautogui.press('down')
# Press the Enter key
pyautogui.press('enter')


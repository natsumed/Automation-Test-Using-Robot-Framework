import pyautogui
import time

# Delay for 2 seconds
# time.sleep(2)
# Type the file path character by character
file_path = r'\Users\MSI\Desktop\Studies\PFE\OpenWRTimg\openwrt-ipq40xx-generic-wallys-dr40x9-squashfs-sysupgrade.bin'
pyautogui.typewrite(file_path, interval=0.05)

# Delay for 1 second
time.sleep(1)

# Press the Enter key
pyautogui.press('enter')

import pyautogui
import time

# Delay to ensure the file upload window is focused
time.sleep(2)

# Scroll until the folder 'imgOpenWRT' is found
for _ in range(10):  # Max 10 attempts (adjust as needed)
    folder_location = pyautogui.locateOnScreen('imgOpenWRT')
    if folder_location:
        pyautogui.click(folder_location)
        break
    else:
        pyautogui.scroll(-100)  # Scroll up
        time.sleep(1)  # Wait for the page to update

# Delay to allow time for the folder to open
time.sleep(2)

# Click on the image file to upload
image_location = pyautogui.locateOnScreen('openopen.bin')
if image_location:
    pyautogui.click(image_location)
else:
    print("Image file not found!")

# You can add additional actions here if needed

# End of the script

#import os
import pyautogui
import time
import tkinter as tk

# Determine the absolute path to the directory of the script
#script_dir = os.path.dirname(os.path.abspath(__file__))
#file_path = os.path.join(script_dir, 'result_python.txt')

# Create a Tkinter window
root = tk.Tk()

# Get the screen width and height
screen_width = root.winfo_screenwidth()
screen_height = root.winfo_screenheight()

# Calculate the middle coordinates
middle_x = screen_width // 2
middle_y = screen_height // 2

# Close the Tkinter window
root.destroy()

# Move the mouse cursor to the middle of the screen
pyautogui.moveTo(middle_x, middle_y)

# Click to ensure focus
pyautogui.click()
time.sleep(5)
pyautogui.click()

# Check the active window
#active_window = pyautogui.getActiveWindow()
#time.sleep(2)

#print("Active Window:", active_window)

# Write the active window information to a text file
#with open(file_path, 'w') as f:
#    f.write("Active Window: {}\n".format(active_window))

time.sleep(2)
# Type 'openwrt-'
pyautogui.typewrite('openwrt-ipq', interval=1)

#pyautogui.press('o')

time.sleep(1)


# Press down arrow key
pyautogui.press('down')
time.sleep(2)

# Press enter key
pyautogui.press('enter')

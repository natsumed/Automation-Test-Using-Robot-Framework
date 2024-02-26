"Screenshot file Upload.png"
"imgOpenWRT.png"
"openopen-1.png"
# Sikuli Script to Automate File Upload

# Import the necessary Sikuli modules

# Set the similarity threshold for image recognition (adjust as needed)
# This value determines how closely the captured images must match the screen
Settings.MinSimilarity = 0.8

# Function to upload the OpenWRT image file
def upload_openwrt_image():
    wait(10)
    # Click on the "Browse" button to open the file upload dialog
    click(Pattern("imgOpenWRT.png").similar(0.68))  # Replace with the actual name of the screenshot
    click(Pattern("imgOpenWRT.png").similar(0.68))  # Replace with the actual name of the screenshot
    # Wait for the file upload dialog to appear
    wait(2)

    # Click on the folder containing the OpenWRT image
    click(Pattern("openopen.png").similar(0.50))  # Replace with the actual name of the screenshot
    click(Pattern("openopen.png").similar(0.50))  # Replace with the actual name of the screenshot
    # Wait for the folder to open
    wait(2)

    # Select the OpenWRT image file (adjust the filename as needed)
    #type("openopen.bin")

    # Press Enter to confirm the selection
    type(Key.ENTER)
    
# Main script execution
if __name__ == "__main__":
    # Call the function to upload the OpenWRT image file
    upload_openwrt_image()

## Video:
![RocketSim_Recording_iPhone_16_Pro_6 3_2025-09-01_12 58 55](https://github.com/user-attachments/assets/8121b33a-bbe2-4ff4-8e7c-d971f2c6f963)

## To recreate the bug yourself
1. Run the project
2. Notice how the nav bar buttons, title and status bar is the wrong color.
3. Scroll up
4. Notice as the black and white squares go behind the header, the navbar buttons, title and status bar change color

## What is going on here?
In this example, the scrollview extends to the top of the screen, underneath the header. It would seem the navbars adapt based on the content of the scrollview, completely ignoring the header.
Of course, in this very basic example, we could pin the scrollview to the bottom of the header, but it is not possible in our real world scenario. For example if you want the header to be slightly transparent, showing some content underneath, or if you want multiple tabs with a shared collapsable header.

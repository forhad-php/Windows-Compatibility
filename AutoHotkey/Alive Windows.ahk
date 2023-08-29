; This script moves the mouse cursor in a loop

Loop
{
    ; Move the cursor to the right
    MouseMove, 1, 0, 10, R

    ; Wait for a short duration (in milliseconds)
    Sleep, 60000

    ; Move the cursor to the left
    MouseMove, -1, 0, 10, R

    ; Wait for a short duration (in milliseconds)
    Sleep, 60000
}
;; Directory to copy files from
fromdir:="C:\Users\mphillips\Pictures\Camera Roll"

;; Directory parent to copy file to
todir:="P:\Shipping - Pictures"

InputBox, UserInput, Order Number, Enter Order Number:
if ErrorLevel
    MsgBox, CANCEL was pressed.
else
    MsgBox, You entered "%UserInput%"

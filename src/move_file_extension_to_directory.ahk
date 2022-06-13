;; Directory to copy files from
fromdir:="C:\Users\mphillips\Pictures\Camera Roll"

;; Directory parent to copy file to
todir:="P:\Shipping - Pictures"

;; Get the Order Number from the user.
;; This will be the folder name to copy to
InputBox, UserInput, Order Number, Enter Order Number:
if ErrorLevel
    return ; Cancel was pressed

;; Directory to copy the files to
dir = %todir%\(%UserInput%)

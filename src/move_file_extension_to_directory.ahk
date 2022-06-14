;; Directory to copy files from
fromdir=C:\Users\%A_UserName%\Pictures\Camera Roll

;; Directory parent to copy file to
todir:="P:\Shipping - Pictures"

;; Get the Order Number from the user.
;; This will be the folder name to copy to
InputBox, UserInput, Order Number, Enter Order Number:
if ErrorLevel
    return ; Cancel was pressed

;; Directory to copy the files to
dir = %todir%\(%UserInput%)

;; If the dir does not exist, create it
If !FileExist(dir) {
 FileCreateDir, %dir%
 If ErrorLevel {
   MsgBox, 48, Error, An error occurred when creating the directory.`n`n%dir%
   return
 }
}
;; the dir already exists and is unexpected.
;; Ask user if we still want to use the directory.
Else {
  MsgBox, 4,, Exists, Directory already exists.`n`nWould you like to continue? (press Yes or No)
  IfMsgBox No
    return
}

;; move the files
FileMove %fromdir%\*.jpg,%dir%

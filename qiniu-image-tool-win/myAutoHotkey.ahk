
;;;; ctrl+alt+V upload image to qiniu and get markdown quoto in clipboard

^!V::
; config start
accessKey = G4T2TrlRFLf2-Da-IUrHJKSbVYbJTGpcwBVFbz3D
secretKey = 0wgbpmquurY_BndFuPvDGqzlnfWHCdL8YHjz_fHJ
bucket = forblog  ;qiniu bucket name
bucketDomain = http://ochyazsr6.bkt.clouddn.com/  ;qiniu domain for the image
workingDir = E:\TOOLS\qiniu\  ;directory that you put the qshell.exe 
; config end


; datetime+randomNum as file name
Random, rand, 1, 1000
filename =  %A_yyyy%%A_MM%%A_DD%%A_Hour%%A_Min%_%rand%.jpg
; MsgBox %filename%

; To run multiple commands consecutively, use "&&" between each
SetWorkingDir, %workingDir% 
Run, %comspec% /c qshell account %accessKey% %secretKey% && qshell fput %bucket% %filename% %clipboard% 

;http://up-z1.qiniu.com

clipboard =  ; Empty the clipboard.
clipboard = ![](%workingDir%.%filename%)
return


;统一参数设置 done
;获取文件类型 done  fa-sk#dh.jpg.png
;截图文件保存


^!B::
;;;;; get file type by extension
MsgBox %clipboard%
clipboard = %clipboard%
StringSplit, ColorArray, clipboard, `.  ;split by '.'
maxIndex := ColorArray0  ;get array lenth
;MsgBox, % maxIndex
str = ColorArray%maxIndex%  
fileType := ColorArray%maxIndex%  ;get last element of array, namely fileType(file Extension)
MsgBox, %fileType%

;;;;; datetime+randomNum as file name
Random, rand, 1, 1000
filename =  %A_yyyy%%A_MM%%A_DD%%A_Hour%%A_Min%_%rand%.%fileType%
MsgBox %filename%


;;;;; paste markdown format url to cur editor
clipboard =  ; Empty the clipboard.
clipboard = ![](%filename%)
Send ^v


return
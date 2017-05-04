
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
;拼接文件名 done
;本地文件上传 done
;根据不同文件类型返回不同形式的引用 done
;截图文件保存


^!L::
; config start
accessKey = G4T2TrlRFLf2-Da-IUrHJKSbVYbJTGpcwBVFbz3D
secretKey = 0wgbpmquurY_BndFuPvDGqzlnfWHCdL8YHjz_fHJ
bucket = forblog  ;qiniu bucket name
bucketDomain = http://ochyazsr6.bkt.clouddn.com/  ;qiniu domain for the image
workingDir = E:\TOOLS\qiniu\  ;directory that you put the qshell.exe 
; config end

;;;;; get file type by extension
MsgBox %clipboard%
clipboardStr = %clipboard%
StringSplit, ColorArray, clipboardStr, `.  ;split by '.'
maxIndex := ColorArray0  ;get array lenth
str = ColorArray%maxIndex%  
fileType := ColorArray%maxIndex%  ;get last element of array, namely file type or file extension

;;;;; datetime+randomNum as file name
Random, rand, 1, 1000
filename =  %A_yyyy%%A_MM%%A_DD%%A_Hour%%A_Min%_%rand%.%fileType%


; To run multiple commands consecutively, use "&&" between each
SetWorkingDir, %workingDir% 
Run, %comspec% /c qshell account %accessKey% %secretKey% && qshell fput %bucket% %filename% %clipboard% http://up-z1.qiniu.com

;;;;; paste markdown format url to current editor
resourceUrl = %bucketDomain%%filename%
MsgBox, %resourceUrl%
; if image file
if(fileType="jpg" or fileType="png" or fileType="gif" or fileType="bmp" or fileType="jpeg"){
	resourceUrl = ![](%resourceUrl%)
}
MsgBox, %resourceUrl%
clipboard =  ; Empty the clipboard.
clipboard = %resourceUrl%

;MsgBox %clipboard%
Send ^v

return





^!K::

clipboardStr = %clipboard%
StringSplit, ColorArray, clipboardStr, `.  ;split by '.'
maxIndex := ColorArray0  ;get array lenth
str = ColorArray%maxIndex%  
fileType := ColorArray%maxIndex%  ;get last element of array, namely file type or file extension

if(fileType="jpg" or fileType="png" or fileType="gif" or fileType="bmp" or fileType="jpeg"){
	send image
}else if(fileType="mp4" or fileType="rm" or fileType="rmvb" or fileType="avi" or fileType="mkv" or fileType="3gp"){
	send video
}else{
	send others
}

return



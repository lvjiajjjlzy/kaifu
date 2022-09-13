@echo off
@echo 本脚本为我的世界开服脚本，请放到与服务端核心同级的目录下
@echo 请将你的服务端核心的名字改为server.jar
@echo 请确保你安装了JAVA，若没有，可以在这里快速打开网页下载
@echo =================================
@echo 输入序号下载Java
@echo 0   不下载Java
@echo 1   下载Java8
@echo 2   下载Java16
@echo 3   下载Java17
@echo =================================
CHOICE /C 0123 /N /M "请按下对应数字来选择要执行的操作"
set  java=%ERRORLEVEL%
if %java%==4 (start https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html) else (goto 17)
:17
if %java%==3 (start https://www.oracle.com/java/technologies/javase/jdk16-archive-downloads.html) else (goto 16)
:16
if %java%==2 (start https://www.java.com) else (goto 8)
:8
if %java%==1 (goto start) else (goto go)
:start
if %java% NEQ 1 (goto run) else (goto go)
:run
@echo Java下载完成后，建议安装在%SystemDrive%盘下，由于诸多原因，脚本不提供直接下载
:go
if exist "%cd%\server.jar" (goto go2) else (goto serverjar)
:go2
@echo 现在输入你要设置的运行内存大小，如 5G 或 2048M
set /p ram=输入完成后，请按回车：
:123123
set cs2=1
title 开服脚本，设置运行内存为：%ram%，上次启动是在%time%，启动次数%cs2%，正确关闭服务器请输入stop
set /a cs2+=1
java -Xms%ram% -Xmx%ram% -jar server.jar
@echo 服务器已于%time%关闭或崩溃，将在一段时间后重启，请确保你已同意eula协议，将eula.txt中的false更改为true
@echo 同时确保你按照正确格式设置了运行内存
timeout 10
if %cs2%==10 (goto 456) else (goto 123123)
:456 
@echo 服务器重启次数过多，为防止进一步损坏，脚本停止运行，请查询日志，若看不懂请向他人询问
title 服务器重启次数过多，为防止进一步损坏，脚本停止运行，上次启动在%time%
pause
:serverjar
@echo 没有在同级目录下找到server.jar
@echo ==================================
@echo 0 不进行任何操作，继续开服
@echo 1 寻找jar文件并改名为server.jar，并开服
@echo 2 下载1.9.4服务端   8 下载1.13.2服务端
@echo 3 下载1.12.2服务端 9 下载catserver1.12.2
@echo 4 下载1.14.4服务端 A 下载catserver1.16.5
@echo 5 下载1.16.5服务端 
@echo 6 下载1.18.2服务端
@echo 7 下载1.19.2服务端
@echo 原版端下载自mojang服务器，其它端来自GitHub
@echo ==================================
CHOICE /C 0123456789A /N /M "请按下对应数字或字母来选择要执行的操作"
set  djar=%ERRORLEVEL%
if %djar%==1 (goto go2) else (goto j1)
:j1
if %djar%==3 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar" %cd%\server.jar) else (goto j2)
:j2
if %djar%==2 (ren *.jar server.jar) else (goto j3)
:j3
if %djar%==4 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar" %cd%\server.jar) else (goto j4)
:j4
if %djar%==5 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar" %cd%\server.jar) else (goto j5)
:j5
if %djar%==6 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar" %cd%\server.jar) else (goto j6)
:j6
if %djar%==7 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar" %cd%\server.jar) else (goto j7)
:j7
if %djar%==8 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar" %cd%\server.jar) else (goto j8)
:j8
if %djar%==9 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar" %cd%\server.jar) else (goto go2)
@echo 下载完成，即将开服
goto go2










@echo off
@echo ���ű�Ϊ�ҵ����翪���ű�����ŵ������˺���ͬ����Ŀ¼��
@echo �뽫��ķ���˺��ĵ����ָ�Ϊserver.jar
@echo ��ȷ���㰲װ��JAVA����û�У�������������ٴ���ҳ����
@echo =================================
@echo �����������Java
@echo 0   ������Java
@echo 1   ����Java8
@echo 2   ����Java16
@echo 3   ����Java17
@echo =================================
set /p java=����Ҫ���ص�Java��ţ�������ɺ��»س���
if %java%==0 (goto start) else (goto 8)
:8
if %java%==1 (start https://www.java.com) else (goto 16)
:16
if %java%==2 (start https://www.oracle.com/java/technologies/javase/jdk16-archive-downloads.html) else (goto 17)
:17
if %java%==3 (start https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html) else (goto start)
:start
if %java% NEQ 0 (goto run) else (goto go)
:run
@echo Java������ɺ󣬽��鰲װ��%SystemDrive%���£��������ԭ�򣬽ű����ṩֱ������
:go
if exist "%cd%\server.jar" (goto go2) else (goto serverjar)
:go2
@echo ����������Ҫ���õ������ڴ��С���� 5G �� 2048M
set /p ram=������ɺ��밴�س���
:123123
set cs2=1
title �����ű������������ڴ�Ϊ��%ram%���ϴ���������%time%����������%cs2%����ȷ�رշ�����������stop
set /a cs2+=1
java -Xms%ram% -Xmx%ram% -jar server.jar
@echo ����������%time%�رջ����������һ��ʱ�����������ȷ������ͬ��eulaЭ�飬��eula.txt�е�false����Ϊtrue
@echo ͬʱȷ���㰴����ȷ��ʽ�����������ڴ�
timeout 10
if %cs2%==10 (goto 456) else (goto 123123)
:456 
@echo �����������������࣬Ϊ��ֹ��һ���𻵣��ű�ֹͣ���У����ѯ��־������������������ѯ��
title �����������������࣬Ϊ��ֹ��һ���𻵣��ű�ֹͣ���У��ϴ�������%time%
pause
:serverjar
@echo û����ͬ��Ŀ¼���ҵ�server.jar
@echo ==================================
@echo 0 �������κβ�������������
@echo 1 Ѱ��jar�ļ�������Ϊserver.jar��������
@echo 2 ����1.9.4�����
@echo 3 ����1.12.2�����
@echo 4 ����1.14.4�����
@echo 5 ����1.16.5�����
@echo 6 ����1.18.2�����
@echo 7 ����1.19.2�����
@echo ����Ϊԭ��ˣ�������mojang������
@echo ==================================
set /p djar=������������ػ������������ɺ��»س�
if %djar%==0 (goto go2) else (goto j1)
:j1
if %djar%==2 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar" %cd%\server.jar) else (goto j2)
:j2
if %djar%==1 (ren *.jar server.jar) else (goto j3)
:j3
if %djar%==3 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar" %cd%\server.jar) else (goto j4)
:j4
if %djar%==4 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar" %cd%\server.jar) else (goto j5)
:j5
if %djar%==5 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar" %cd%\server.jar) else (goto j6)
:j6
if %djar%==6 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar" %cd%\server.jar) else (goto j7)
:j7
if %djar%==7 (bitsadmin /transfer down /download /priority normal "https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar" %cd%\server.jar) else (goto go2)
@echo ������ɣ���������
goto go2










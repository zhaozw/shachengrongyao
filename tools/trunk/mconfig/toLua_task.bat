@set root=%cd%

cd C:\wamp\bin\php\php5.3.10
php C:\work2\tool\mconfig\config_script.php task
@echo "creat complete"
copy C:\work2\tool\tag\config\taskConfig.lua C:\work2\client\src\app\conf

pause

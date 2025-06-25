@echo off
echo 리소스팩 빌드 중...

cd resourcepack
powershell "Compress-Archive -Path * -DestinationPath '../releases/latest/server_resourcepack_latest.zip' -Force"
cd ..

echo SHA1 해시 생성 중...
powershell "Get-FileHash -Algorithm SHA1 'releases/latest/server_resourcepack_latest.zip'"

echo 완료! GitHub에 업로드하고 server.properties를 업데이트하세요.
pause
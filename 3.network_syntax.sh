# 모든 프로세스 목록조회
# e:모든프로세스, f:full-format
ps -ef
ps -ef | grep "nginx"

# 프로그램 강제 종료
kill -9 프로세스ID

# 패키지관련
# yum : 레드헷계열 패키지관리도구
# apt-get : 데비안계열 패키지관리도구
sudo apt-get update
sudo apt-get upgrade

# nginx설치
sudo apt-get install nginx
# nginx실행
# systemctl : 프로그램 실행관리도구
sudo systemctl start nginx
sudo systemctl stop nginx
# java
sudo apt-get install openjdk-11-jdk

# 네트워크 관련명령어
# ip정보 조회
ifconfig

# 특정 도메인의 ip주소 정보조회 : DNS서버에 문의
nslookup naver.com

# 네트워크연결상태 조회(ip만 사용)
# 일반적으로 ping은 보안목적상 막아두고 있음
ping IP주소
ping 8.8.8.8

# 네트워크연결상태 조회(port까지 사용)
nc -zv ip또는도메인 port번호
nc -zv naver.com 443
# telnet은 실제 데이터까지 전송하여 연결상태를 확인하므로, 차단되거나 권장되지 않음
telnet naver.com 443

# 원격접속 : 22포트 사용
ssh username@host주소(ip또는도메인)
# 원격파일전송
scp 전송하고자하는파일위치 원격지주소


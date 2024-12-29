# 사용자 추가
useradd seonguk2
# 비밀번호 지정
passwd seonguk2

# 로그인 사용자 변경 : 변경하고자 하는 계정의 비밀번호를 입력
# sudo 키워드는 현재 사용자의 비밀번호 입력
su - seonguk2

# chmod는 권한 수정 명령어 : r(4), w(2), x(1)
chmod 644 파일명
chmod u+x 파일명
chmod u-w 파일명
chmod g+w 파일명
chmod o+w 파일명

# 소유자, 그룹 변경
chown 소유자명:그룹명 파일명
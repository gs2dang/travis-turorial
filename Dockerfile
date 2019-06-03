FROM        gs2dang/bulletin_board:base

# 전체 파일 복사
COPY        ./  /srv/project

# 명령을 실행할 디렉토리 지정
WORKDIR     /srv/project/app

# 정적 파일 모으기
#RUN         python3 manage.py collectstatic --noinput

# 기존 Nginx 파일 삭제 및 새 Nginx 파일 복사
#RUN         rm -rf /etc/nginx/sites-available/* && \
#            rm -rf /etc/nginx/sites-enabled/* && \
#            cp -f  /srv/project/.config/app.nginx \
#                   /etc/nginx/sites-available/ && \
#            ln -sf /etc/nginx/sites-available/app.nginx \
#                   /etc/nginx/sites-enabled/app.nginx

# supervisor 파일 복사
#RUN         cp -f /srv/project/.config/supervisord.conf \
#                  /etc/supervisor/conf.d/

# 호스트와 연결할 80번 포트 개방
#EXPOSE      80

# 컨테이너 시작 시 실행할 명령
#CMD         supervisord -n
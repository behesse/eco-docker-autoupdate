FROM cm2network/steamcmd:root
RUN apt update -y && apt install -y supervisor libgdiplus libc6-dev libgssapi-krb5-2 lib32gcc-s1 cron
COPY opt/ /opt/
RUN mkdir /opt/eco && mkdir /opt/logs && mkdir /run/supervisor && chown -R steam:steam /opt && chown -R steam:steam /run/supervisor
RUN crontab -u steam /opt/config/crontab && chmod u+s /usr/sbin/cron
USER steam
ENTRYPOINT /opt/scripts/startup.sh
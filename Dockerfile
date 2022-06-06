FROM cm2network/steamcmd:root
RUN apt update -y && apt install -y supervisor libgdiplus libc6-dev libgssapi-krb5-2 lib32gcc-s1 cron
COPY opt/ /opt/
RUN mkdir /opt/eco && chown -R steam:steam /opt
RUN crontab -u steam /opt/config/crontab
RUN su -m steam -c "/opt/scripts/update.sh"
ENTRYPOINT /opt/scripts/startup.sh
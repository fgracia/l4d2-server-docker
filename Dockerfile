FROM fgracia/steamcmd

RUN mkdir -p /opt/l4d2

WORKDIR /opt/steamcmd/bin
RUN ./steamcmd.sh +login exialanbdx Exialanbdx33 +force_install_dir /opt/l4d2 +app_update 222860 validate +quit

VOLUME ["/opt/l4d2"]

CMD ["/opt/l4d2/srcds", "-console", "-game left4dead2", "-maxplayers 8", "+sv_lan 0", "+map c5m1_waterfront"]
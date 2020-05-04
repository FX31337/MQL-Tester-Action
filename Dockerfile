FROM ea31337/ea-tester:dev
MAINTAINER kenorb
ENV TERMINAL_DIR="/home/ubuntu/.wine/drive_c/Program Files/MetaTrader 4"
ENV WINE_PATH=/home/ubuntu/.wine
RUN set
USER root
ENTRYPOINT ["/opt/scripts/run_backtest.sh"]
CMD ["-v"]

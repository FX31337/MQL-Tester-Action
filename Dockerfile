FROM ea31337/ea-tester
MAINTAINER kenorb
ENV WINE_PATH=/home/ubuntu/.wine
RUN set
ENTRYPOINT ["/opt/scripts/run_backtest.sh"]

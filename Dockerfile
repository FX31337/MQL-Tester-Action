FROM ea31337/ea-tester:dev
MAINTAINER kenorb

RUN set
ENTRYPOINT ["/opt/scripts/run_backtest.sh"]
CMD ["-v"]

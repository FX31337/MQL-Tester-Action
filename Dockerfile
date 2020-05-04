FROM ea31337/ea-tester:dev
MAINTAINER kenorb

# Install platform.
ARG MT_VER=4.0.0.1260
ENV MT_VER $MT_VER
RUN eval.sh install_mt $MT_VER

RUN set
ENTRYPOINT ["/opt/scripts/run_backtest.sh"]
CMD ["-v"]

FROM rocker/binder:4.0.2
LABEL maintainer='Ani Ruhil'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

RUN wget https://github.com/aniruhil/mpa5830-fa21/main/Dockerfile && R -e "options(repos = list(CRAN = 'http://mran.revolutionanalytics.com/snapshot/2021-07-17/')); devtools::install_deps()"

RUN rm Dockerfile.1; exit 0

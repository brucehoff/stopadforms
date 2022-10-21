FROM sagebionetworks/shiny-base:release-1.0
ARG INSTALL_DIR=/srv/shiny-server/stopadforms
RUN mkdir $INSTALL_DIR
COPY * $INSTALL_DIR
WORKDIR $INSTALL_DIR
RUN Rscript -e "install.packages('renv', repos='http://cran.rstudio.com/'); renv::restore()"
# Copyright (c) UBC-DSCI Development Team.
FROM ubcdsci/py-dsci-100:20230831023622aa49aa

# Make sure the contents of our repo are in ${HOME} for binder
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

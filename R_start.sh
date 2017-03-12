#!/bin/bash
docker run -it -p 8888:8888 -v /home/nikasa/Docker/KDI_Statoil:/home/jovyan/work -v /home/nikasa/Docker/mycert.pem:/home/jovyan/.local/share/jupyter/notebook.pem -e USE_HTTPS=yes  --user root -e GRANT_SUDO=yes nikasa/r-notebook-v1.0:latest start-notebook.sh  --NotebookApp.password='sha1:446f44ac0d61:4b45189fae99b1ff67555a4d91ddf6d7af77d84f'

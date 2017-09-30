#!/bin/bash
sudo nvidia-docker run -it -p 8888:8888 -p 6006:6006 -p 4000:22 -v /home/nikasa/Docker/notebooks:/notebooks -v /home/nikasa/Docker/mycert.pem:/home/jovyan/.local/share/jupyter/notebook.pem -e USE_HTTPS=yes tensorflow/tensorflow:latest-gpu /run_jupyter.sh --NotebookApp.password='sha1:446f44ac0d61:4b45189fae99b1ff67555a4d91ddf6d7af77d84f' --allow-root

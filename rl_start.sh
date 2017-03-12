#!/bin/bash
sudo docker run -it -p 8888:8888 -p 6006:6006 -v /home/nikasa/Docker/reinforcement-learning:/notebooks -v /home/nikasa/Docker/mycert.pem:/home/jovyan/.local/share/jupyter/notebook.pem -e USE_HTTPS=yes nikasa/rl_opengym /run_jupyter.sh --NotebookApp.password='sha1:446f44ac0d61:4b45189fae99b1ff67555a4d91ddf6d7af77d84f'

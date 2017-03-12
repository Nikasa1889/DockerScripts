#!/bin/bash
docker run -it -p 8888:8787 -v /home/nikasa/Docker/KDI_Statoil:/home/nikasa  --user root -e USER=nikasa -e PASSWORD=wordpass123 -e GRANT_SUDO=yes rocker/hadleyverse 

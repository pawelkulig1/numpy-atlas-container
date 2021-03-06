from ubuntu:latest

RUN apt-get update
RUN yes | apt-get install python3 python3-dev gcc git python3-pip vim 
RUN git clone https://github.com/numpy/numpy.git numpy
RUN pip3 install cython

#insert config file
RUN yes | apt-get install libatlas-base-dev
#COPY site.cfg numpy/site.cfg
COPY site.cfg ~/

RUN pip3 install numpy
COPY benchmark.py benchmark.py

ENTRYPOINT python3 benchmark.py >> home/shared.out



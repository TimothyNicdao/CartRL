FROM python:3.8-slim-buster
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt 
# RUN pip install gym[all]
RUN pip install pyglet
RUN apt-get install python-opengl
CMD [ "python3", "CartPoleAgent.py" ]
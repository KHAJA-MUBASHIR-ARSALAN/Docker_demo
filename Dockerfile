# use an official python runtime as a parent image

FROM python:3.8-slim

# set the working directory in the container

WORKDIR /app

# copy the current directory contents into the container

COPY . /app

# Install any needed packages specified in requirments.txt

RUN pip install --no-cache-dir -r requirements.txt

# make port 5000 available to the world outside this container

EXPOSE 5000

# Define environment variable

ENV Flask_app=app.py

# run the flask_app

CMD ["flask","run","--host=0.0.0.0"]
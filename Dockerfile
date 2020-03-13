# Base Image
FROM python:3.7

# Set default environment variables
ENV PYTHONUNBUFFERED 1
ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive 

WORKDIR /code

# Install global dependencies
RUN apt-get update -qq && apt-get -y install binutils libproj-dev gdal-bin

# Install project dependencies
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt


# Add current directory code to working directory
COPY . /code
# get Python3.5 image and it’s package manager, pip
FROM python:3.5-slim

# declares who the author of the image is
LABEL maintainer="github.com/git-leon"

# tells us which user should be running the image
USER root

# sets the working directory for some other commands, like what are in the CMD or RUN sections
WORKDIR /app

# copies all the files and directories from the current directory (specified with the .) to the /app directory
ADD . /app

#  installs the requirements for our application using pip and the requirements.txt file provided
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# tells Docker which ports to listen on at runtime.
EXPOSE 80

# sets an environment variable called NAME to the value of World
ENV NAME World

# sets the command to be executed when running the image `python app.py`
CMD ["python", "app.py"]

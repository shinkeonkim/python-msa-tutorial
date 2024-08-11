FROM python:3.11-slim as base

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY Pipfile Pipfile.lock ./

# Install pipenv and dependencies
RUN python -m pip install --upgrade pip && \
    pip install pipenv && \
    pipenv --python 3.11 install --deploy --ignore-pipfile 

FROM base as build

# Copy the rest of the application code
COPY . /app

# Make port 5550 available to the world outside this container
EXPOSE 5550

# Define environment variable
ENV FLASK_APP=app.py

# Run the application
CMD ["pipenv", "run", "flask", "run", "--host=0.0.0.0", "--port=5550"]

FROM ubuntu:latest 

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# install mysqli
RUN apt update && 

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["php","-S", "0.0.0.0:8000"]

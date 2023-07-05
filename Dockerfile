# Use an official Python runtime as a parent image
FROM python:3.7-slim


# Set the working directory in the container to /app
WORKDIR /back-end

# Add the current directory contents into the container at /app
ADD . /back-end

RUN pwd

RUN ls

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt



# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "back-end/app.py"]

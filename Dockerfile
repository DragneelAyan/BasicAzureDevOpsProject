#Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /flask_app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available outside this container
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py

#Run the application
CMD [ "flask", "run", "--host=0.0.0.0" ]

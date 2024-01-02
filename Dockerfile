# Use an official Python runtime as a parent image
FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install flask
# Make port 5000 available does not work see docker-compose
#EXPOSE 5000

# Define environment variable
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run app.py when the container launches
#CMD ["flask", "run"]
CMD ["python", "app.py"]

FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application files
COPY . .

# Expose the port that the application will run on
EXPOSE 5000

# Command to run the application when the container starts
CMD ["python", "app.py"]
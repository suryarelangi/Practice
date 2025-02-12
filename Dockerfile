# Step 1: Use an official Python image as the base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory (with app.py and requirements.txt) into the container
COPY . /app

# Step 4: Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port that your app runs on (if it's a web app)
EXPOSE 8000

# Step 6: Run the Python app when the container starts
CMD ["python", "app.py"]

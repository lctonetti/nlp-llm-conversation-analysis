FROM jupyter/datascience-notebook

# Set the working directory inside the container
WORKDIR /home/jovyan/work

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Ensure the spaCy model is downloaded explicitly
RUN python -m spacy download en_core_web_sm
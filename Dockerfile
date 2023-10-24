FROM python:3.6

WORKDIR /workspace

# Install Jupyter
RUN pip install jupyter




COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]


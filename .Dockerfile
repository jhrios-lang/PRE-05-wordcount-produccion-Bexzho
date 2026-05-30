# docker build -t User/wordcount-app .
# docker run --rm -v "%cd%/data/input:/data/input" -v "%cd%/data/output:/data/output" wordcount-app
#
FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install -e .

CMD ["python", "-m", "homework", "/data/input/", "/data/output/"]
# docker run --rm -v "%cd%/data/input:/data/input" -v "%cd%/data/output:/data/output/" User/wordcount-app
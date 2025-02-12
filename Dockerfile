FROM python:3.12-slim

WORKDIR /book_app

COPY . /book_app

RUN pip install --no-cache-dir --timeout=300 -r requirements.txt

EXPOSE 8000

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

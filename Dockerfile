FROM python:3.10-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências e instala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o resto do código para dentro do container
COPY . .

# Expõe a porta que a API vai rodar
EXPOSE 8000

# Comando para iniciar o servidor do FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
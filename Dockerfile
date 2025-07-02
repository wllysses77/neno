# 1. Usar uma imagem base oficial e leve do Python
FROM python:3.10-slim

# 2. Definir variáveis de ambiente para boas práticas em Python
# Evita que o Python gere arquivos .pyc
ENV PYTHONDONTWRITEBYTECODE 1
# Garante que a saída do Python seja enviada diretamente para o terminal sem buffer
ENV PYTHONUNBUFFERED 1

# 3. Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# 4. Copiar e instalar as dependências
# Copiar apenas o requirements.txt primeiro aproveita o cache do Docker.
# Se o código mudar, mas as dependências não, esta camada não será reconstruída.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar o restante do código da aplicação
COPY . .

# 6. Expor a porta em que a aplicação será executada
EXPOSE 8000

# 7. Comando para iniciar a aplicação
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
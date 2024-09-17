# Usa uma imagem base do Python 3.9
FROM python:3.9

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo de dependências
COPY requirements.txt requirements.txt

# Instala as dependências
RUN pip install -r requirements.txt

# Copia o código da aplicação para o contêiner
COPY . .

# Expondo a porta 8080 para acessar a aplicação
EXPOSE 8080

# Define o comando para rodar a aplicação Flask
CMD ["python", "app.py"]


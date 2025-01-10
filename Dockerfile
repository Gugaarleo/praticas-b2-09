# Especificação da imagem Docker
FROM python:3.12.3-alpine

# Dependências Linux necessárias, removendo o cache posteriormente
RUN apk add build-base linux-headers && \
    rm -rf /var/cache/apk/*

# Diretório de trabalho
WORKDIR /usr/src/app

# Copiar as dependências
COPY requirements.txt /usr/src/app

# Instalar dependências Python
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copiar a aplicação    
COPY . /usr/src/app

# Expor a porta usada pelo Gunicorn
EXPOSE 5000

# Configurar o comando de inicialização do Gunicorn
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "app.app:app"]
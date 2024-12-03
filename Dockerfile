# Usa a imagem oficial do n8n como base
FROM docker.n8n.io/n8nio/n8n:latest

# Define variáveis de ambiente para o worker
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=pg_local
ENV DB_POSTGRESDB_PORT=5432
ENV DB_POSTGRESDB_DATABASE=n8n
ENV DB_POSTGRESDB_USER=utk
ENV DB_POSTGRESDB_PASSWORD=utkpass
ENV EXECUTIONS_MODE=queue
ENV QUEUE_BULL_REDIS_HOST=redis_local
ENV QUEUE_HEALTH_CHECK_ACTIVE=true
ENV N8N_ENCRYPTION_KEY=293867198234

# Define o diretório de trabalho
WORKDIR /home/node/.n8n

# Copia o volume de armazenamento
VOLUME /home/node/.n8n

# Expõe a porta padrão do n8n
EXPOSE 5678

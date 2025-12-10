# IMAGEN BASE
FROM edisonpaul4/super-imagen-base:1
# INSTRUCCIONES
WORKDIR /app

RUN echo "Ejecutando instrucciones adicionales..."
RUN pip install psycopg2-binary

# Copiar el archivo de la aplicación
COPY app.py .

# Exponer el puerto 3000
EXPOSE 3000

# ENTRYPOINT
CMD ["python", "app.py"]
docker rm -f cui
docker rmi -f chatgpt-ui
docker build -t chatgpt-ui .
docker run --name cui  -e OPENAI_API_HOST=http://10.0.0.4:8080  -d -p 3000:3000 chatgpt-ui
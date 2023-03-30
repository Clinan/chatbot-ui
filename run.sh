docker rm -f cui
docker rmi -f chatgpt-ui
docker build -t chatgpt-ui .
docker run --name cui  -e OPENAI_API_HOST=http://10.0.0.4:8080 -e OPENAI_API_KEY=f9e8e3a55275e779ca5af319767ba106c4683fb2ca0dda1041da88305d668ad8 -d -p 3000:3000 chatgpt-ui

docker rm -f cui
docker rmi -f chatgpt-ui
docker build -t chatgpt-ui .
docker run --name cui  -e OPENAI_API_HOST=http://0.0.0.0:8080 -e OPENAI_API_KEY=f9e8e3a55275e779ca5af319767ba106c4683fb2ca0dda1041da88305d668ad8 -d -p 3000:3000 chatgpt-ui


# ssh -i /root/.ssh/chat_key.pem azureuser@20.85.245.36 "sudo bash -c bash; cd /home/azureuser/chatbot-ui; sudo ./run.sh >> remote.log; sudo docker export cui > chatbot.tar >> remote.log; scp chatbot.tar root@116.204.107.8:/root/dev/chatbot-ui/ >> remote.log"
# ssh -i /root/.ssh/chat_key.pem azureuser@20.85.245.36 "sudo bash -c bash; cd /home/azureuser/chatbot-ui; sudo docker export cui > chatbot.tar >> remote.log; sudo scp chatbot.tar root@116.204.107.8:/root/dev/chatbot-ui/ >> remote.log"
# docker import - chatgpt-ui < chatbot.tar
# docker run --name cui  -e OPENAI_API_HOST=http://192.168.0.154:8080 -e OPENAI_API_KEY=f9e8e3a55275e779ca5af319767ba106c4683fb2ca0dda1041da88305d668ad8 -d -p 3000:3000 localhost/chatgpt-ui

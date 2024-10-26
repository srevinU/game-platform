docker build -t game-platform .  
docker run -d --name game-platform -p 3040:3000 game-platform
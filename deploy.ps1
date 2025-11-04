# deploy.ps1 - Simple deployment script for Windows
Write-Host "Starting deployment..." -ForegroundColor Green

# Stop existing containers
docker stop ansible-app 2>$null
docker rm ansible-app 2>$null

# Run new container
docker run -d -p 8081:80 --name ansible-app nginx:alpine

Write-Host "Deployment complete! Access at http://localhost:8081" -ForegroundColor Green
docker ps
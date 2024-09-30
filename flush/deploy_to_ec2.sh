EC2_USER=ubuntu
EC2_HOST=ec2-204-236-203-56.compute-1.amazonaws.com
SSH_OPTIONS="-o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"
echo "Starting to Deploy..."
ssh $SSH_OPTIONS $EC2_USER@$EC2_HOST "
  sudo docker image prune -f
  cd tictactoe_rails_react
  sudo docker-compose down
  git fetch origin
  git reset --hard origin/develop
  echo 'You are doing well'
  sudo docker-compose build
  sudo docker-compose up -d
"
echo "Deployment completed successfully"
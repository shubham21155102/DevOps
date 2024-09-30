git add .
message="Enter the commit message: "
read -p "$message" message
git commit -m "$message"
git push
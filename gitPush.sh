git add .
# Now ask for the commit message
message="Enter the commit message: "
read -p "$message" message
git commit -m "$message"
git push
echo "Installing PostgreSQL 9.6."
# Add the apt repository to the system repos
add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main"
# Get the GPG key and accept it
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

# Update the system apt repos with the new entries
apt-get update
apt-get install postgresql-9.6 postgresql-server-dev-9.6 -y

# Install postgres dev headers
apt-get install libpq-dev -y

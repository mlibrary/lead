#!/usr/bin/env sh
cd "$(dirname "$0")"

cp ../.gitignore ../.gitignore.bak
cp ../docker-compose.yml ../docker-compose.yml.bak
cp ../Gemfile ../Gemfile.bak
cp ../Gemfile.lock ../Gemfile.lock.bak

cp env.development.local ../.env.development.local
cp env.test.local ../.env.test.local
cp docker-compose.yml ../docker-compose.yml

cd ..

git update-index --assume-unchanged .gitignore
git update-index --assume-unchanged docker-compose.yml
git update-index --assume-unchanged Gemfile
git update-index --assume-unchanged Gemfile.lock

echo "docker-compose.yml.bak" >> .gitignore
echo "Gemfile.lock.bak" >> .gitignore
echo "Gemfile.bak" >> .gitignore
echo ".gitignore.bak" >> .gitignore

echo "gem 'rspec-rails'" >> Gemfile

git ls-files -v | grep ^[a-z]
git status

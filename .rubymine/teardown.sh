#!/usr/bin/env sh
cd "$(dirname "$0")"

cd ..

git update-index --no-assume-unchanged .gitignore
git update-index --no-assume-unchanged docker-compose.yml
git update-index --no-assume-unchanged Gemfile
git update-index --no-assume-unchanged Gemfile.lock

mv .gitignore.bak .gitignore
mv docker-compose.yml.bak docker-compose.yml
mv Gemfile.bak Gemfile
mv Gemfile.lock.bak Gemfile.lock

rm .env.development.local
rm .env.test.local

git ls-files -v | grep ^[a-z]
git status

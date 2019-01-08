## About

Sling is a Slack clone built with Phoenix and React. Check out the blog post on medium.

https://medium.com/@benhansen/lets-build-a-slack-clone-with-elixir-phoenix-and-react-part-1-project-setup-3252ae780a1

#### Running the React app

Install [Yarn](https://github.com/yarnpkg/yarn)

Install dependencies


yarn install
Copy `.env.example` contents into to a new `.env` file
yarn start


docker build  --no-cache -t sling-web-img .

docker run -d --name sling-web --rm -v $(pwd):/usr/src/app-sling-web --expose 3000 --net nginx-proxy -e VIRTUAL_HOST=dev-sling-web.tk -e VIRTUAL_PROTO=http -e VIRTUAL_PORT=3000 sling-web-img

docker exec -ti sling-web /bin/bash
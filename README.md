# isaac-db
Database backend for ISAAC

## Running
`docker image build -t ramonziai/isaac-db https://github.com/ramonziai/isaac-db.git`

`docker run -p 5432:5432 --name isaac-db -e POSTGRES\_PASSWORD=super-secret-password ramonziai/isaac-db`


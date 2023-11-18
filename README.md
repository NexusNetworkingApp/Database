# Database

## Database system Architecture
The database runs as an image in MySQL docker container, which means it it's initialized and only running while docker and docker compose up is running. There is a volume established to save data to local machine and keep it saved (database, tables, entry) independent of what happens to container.
- When database first created or changes are made, it gets saved to local machine throught mount.

## Initialization directions

### 1. Initialize MySQL docker container

### 2. Initialize DB
Run ```chmod +x initialize.sh```, then
```./initialize.sh ```

## How to use MySQL docker container

To access container: ```docker exec -it nexus-db-container mysql -u root -p``` Password: "password"

## Access docker container database on dbeaver
URL: jdbc:mysql://localhost:3306/nexus_db?allowPublicKeyRetrieval=true&useSSL=false


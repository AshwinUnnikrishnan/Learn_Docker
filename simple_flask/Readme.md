### Steps

 1. #### Docker Image Create
	 docker build -t histravelstories/insurance  .
 2. #### Docker Run
	 docker run --name container_insurance1 -p 7001:8080 histravelstories/insurance:latest
 3. #### Docker Compose 
	 docker compose up

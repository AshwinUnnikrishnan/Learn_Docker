# Deploy Machine Learning Pipeline on Google Kubernetes Engine
#### A beginner’s guide to train and deploy machine learning pipelines in Python using PyCaret

## 👉 Learning Goals of this Tutorial
- What is a Container, What is Docker, What is Kubernetes, and What is Google Kubernetes Engine?
- Build a Docker image and upload it on Google Container Registry (GCR).
- Create clusters and deploy machine learning pipeline with Flask app as a web service.
- See a web app in action that uses a trained machine learning pipeline to predict on new data points in real-time.

Read the complete post: https://medium.com/@moez_62905/deploy-machine-learning-model-on-google-kubernetes-engine-94daac85108b

- Official : https://www.pycaret.org

- LinkedIn : https://www.linkedin.com/company/pycaret/

- YouTube : https://www.youtube.com/channel/UCxA1YTYJ9BEeo50lxyI_B3g 

- PyCaret's Repository : https://www.github.com/pycaret/pycaret

#### Steps
1. Clone Repo of the project.
2. Build the Docker Image
   - docker build -t gcr.io/${PROJECT_ID}/{name}:{version} .
3. Upload Container
   - gcloud auth configure-docker
   - docker push gcr.io/${PROJECT_ID}/{name}:{version}
4. Create Cluster
   - gcloud config set project $PROJECT_ID 
   - gcloud config set compute/zone {zone}
   - gcloud container clusters create {cluster_name} --num-nodes=1
5. Deploy Application
   - kubectl create deployment insurance-app --image=gcr.io/${PROJECT_ID}/insurance-app:v1
5. Expose Application to the Internet
   - kubectl expose deployment insurance-app --type=LoadBalancer --port 80 --target-port 8080
7. Check Service
   - kubectl get service

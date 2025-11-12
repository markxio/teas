# TEAS

Deploy an LLM with vllm/sglang/tensorrt in a Docker container on Kubernetes serving inference through an API. In another container, launch a client sending prompts to the inference server and receiving responses back. 

## Static number of clients in a single pod

Separate inference server and prompt client into spearate containers. In Kubernetes, containers cannot be added to pods once they are up and running. Therefore, define the number of clients (number of containers each running a client) a priori.

On EIDF, use the yaml config [job-vllm-server-client.yaml](configs/job-vllm-server-client.yaml) to start such two containeres in a single job, creating a single pod in which networking between a vllm-server and an http-client are enabled through localhost.

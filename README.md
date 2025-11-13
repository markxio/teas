# TEAS

Deploy an LLM with vllm/sglang/tensorrt in a Docker container on Kubernetes serving inference through an API. In another container, launch a client sending prompts to the inference server and receiving responses back. 

1. Create a persistent volume claim (pvc) with [configs/pvc.yaml](configs/pvc.yaml)
2. Create a job with two containers (deployed in a single pod), with an inference-server container and a benchmark-serving-client container. Mount the pvc into the benchmarking-serving-client container.
3. The benchmark-serving-client container checks health of the inference-server until ready. Then goes on to run the benchmark by sending http requests to the inference-server endpoint. The benchmark-serving-client container writes performance data to the pvc.
4. Create a job to be able to transfer performance data from a pod with the mounted pvc to the login node. Use [configs/job-pvc-xfer.yaml](configs/job-pvc-xfer.yaml) to create this pod, then from this pod transfer the data to the login node.

## Static number of clients in a single pod

Separate inference server and prompt client into spearate containers. In Kubernetes, containers cannot be added to pods once they are up and running. Therefore, define the number of clients (number of containers each running a client) a priori.

On EIDF, use the yaml config [configs/job-vllm-server-bench-serving.yaml](configs/job-vllm-server-bench-serving.yaml) to start such two containeres in a single job, creating a single pod in which networking between a vllm-server and an http-client are enabled through localhost.

## MoE-CAP

Run a prototype of MoE-CAP on EIDF using [configs/job-sglang-moe-cap.yaml](configs/job-sglang-moe-cap.yaml). This deploys two containers: an sglang-server and a bench-serving-client, based on MoE-CAP.

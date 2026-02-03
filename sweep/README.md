# Generate Sweep

- check out the table of experiments as csv
- generate yaml configs from csv
- launch jobs on eidf
- inspect generated performance data

## Experiments

The list of experiments with parameters to be found in [data/experiments.csv](data/experiments.csv).

<details>

<summary>List of experiments</summary>

| model_name | gpu | num_gpu | target_input_tokens | target_output_tokens | batch_size | dataset | num_samples |
|---|---|---|---|---|---|---|---|
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 1 | 4K | 1K | 1 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 1 | 13K | 1K | 1 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 1 | 4K | 1K | 1 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 1 | 13K | 1K | 1 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 13K | 1K | 1 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 13K | 1K | 1 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 13K | 1K | 1 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 1 | 4K | 1K | 32 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 1 | 4K | 1K | 32 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 1 | 13K | 1K | 32 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 13K | 1K | 32 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 13K | 1K | 32 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 13K | 1K | 32 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 1 | 4K | 1K | 64 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 1 | 13K | 1K | 64 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 13K | 1K | 64 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 13K | 1K | 64 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 13K | 1K | 64 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 1 | 4K | 1K | 128 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H100 | 8 | 13K | 1K | 128 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | A100 | 8 | 13K | 1K | 128 | longbench | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| Qwen/Qwen1.5-MoE-A2.7B-Chat | H200 | 8 | 13K | 1K | 128 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 1 | 4K | 1K | 1 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 1 | 13K | 1K | 1 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 1 | 4K | 1K | 1 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 1 | 13K | 1K | 1 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 13K | 1K | 1 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 13K | 1K | 1 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 13K | 1K | 1 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 1 | 4K | 1K | 32 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 1 | 4K | 1K | 32 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 1 | 13K | 1K | 32 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 13K | 1K | 32 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 13K | 1K | 32 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 13K | 1K | 32 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 1 | 4K | 1K | 64 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 1 | 13K | 1K | 64 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 13K | 1K | 64 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 13K | 1K | 64 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 13K | 1K | 64 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 1 | 4K | 1K | 128 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H100 | 8 | 13K | 1K | 128 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | A100 | 8 | 13K | 1K | 128 | longbench | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| deepseek-ai/DeepSeek-V2-Lite-Chat | H200 | 8 | 13K | 1K | 128 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 1 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 1 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 1 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 32 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 32 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 32 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 64 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 64 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 64 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 128 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 128 | longbench | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| mistralai/Mixtral-8x7B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 128 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 1 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 1 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 1 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 32 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 32 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 32 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 64 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 64 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 64 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H100 | 8 | 13K | 1K | 128 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | A100 | 8 | 13K | 1K | 128 | longbench | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| mistralai/Mixtral-8x22B-Instruct-v0.1 | H200 | 8 | 13K | 1K | 128 | longbench | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 4K | 1K | 1 | gsm8k | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 13K | 1K | 1 | longbench | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 4K | 1K | 32 | gsm8k | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 13K | 1K | 32 | longbench | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 4K | 1K | 64 | gsm8k | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 13K | 1K | 64 | longbench | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 4K | 1K | 128 | gsm8k | 100 |
| deepseek-ai/DeepSeek-R1 | H200 | 8 | 13K | 1K | 128 | longbench | 100 |

</details>

## Generate kubernetes configs

Run [generate.sh](generate.sh) to generate kubernetes config files. Yaml configurations will be written to `--target_dir`:

```
#!/bin/bash

python3 -m venv venv
source venv/bin/activate
pip install pandas

python3 generate.py --csv_file=data/experiments.csv --target_dir=kubernetes_configs
```

## Create kubernetes jobs

Run [submit_jobs.sh](submit_jobs.sh). Note parameters to selectively create jobs based on str prefix (model):

```
#!/bin/bash

kubernetes_configs=($(ls kubernetes_configs/*.yaml))

RUN_QWEN1_5=1
RUN_MIXTRAL_8x7B=0
RUN_MIXTRAL_8x22B=0
RUN_DEEPSEEK_V2_LITE=0
RUN_DEEPSEEK_R1=0

RUN_A100=1
RUN_H100=0
RUN_H200=0

for yaml in "${kubernetes_configs[@]}"; do
	if [[ $yaml == *"Qwen1.5"* && $RUN_QWEN1_5 -eq 0 ]]; then
		continue
	elif [[ $yaml == *"Mixtral-8x7B"* && $RUN_MIXTRAL_8x7B -eq 0 ]]; then
		continue
	elif [[ $yaml == *"Mixtral-8x22B"* && $RUN_MIXTRAL_8x22B -eq 0 ]]; then
		continue
	elif [[ $yaml == *"DeepSeek-V2-Lite"* && $RUN_DEEPSEEK_V2_LITE -eq 0 ]]; then
		continue
	elif [[ $yaml == *"DeepSeek-R1"* && $RUN_DEEPSEEK_R1 -eq 0 ]]; then
		continue
	fi

	if [[ $yaml == *"A100"* && $RUN_A100 -eq 0 ]]; then
		continue
	elif [[ $yaml == *"H100"* && $RUN_H100 -eq 0 ]]; then
		continue
	elif [[ $yaml == *"H200"* && $RUN_H200 -eq 0 ]]; then
		continue
	fi

	kubectl -n eidf230ns create -f kubernetes_configs/${yaml}
done
```

## Profiling and performance data

The output directory is specified as command line parameter to the profiler (`moe_cap.runner.openai_api_profile`) in the respective yaml configuration. The base path for the output directory is set to `/mnt/ceph/tmp/MoE-CAP-outputs/` which can be mounted into a pod.

For instance:
```
# list the files in the following dir
ls /mnt/ceph/tmp/MoE-CAP-outputs/Qwen1.5-MoE-A2.7B-Chat_A100x1_4000_1000_bs1_gsm8k

# which lists the following two files
cap_metrics_gsm8k_20260203_151054.json  
detailed_results_gsm8k.jsonl
```

<details>

<summary>cap_metrics_*</summary>

```
$ cat cap_metrics_gsm8k_20260203_151054.json 
{
    "total_requests": 100,
    "successful_requests": 100,
    "failed_requests": 0,
    "exact_match": 0.0,
    "correct": 0,
    "total": 100,
    "no_answer": 4,
    "cost": null,
    "model_name": "Qwen/Qwen3-30B-A3B-Thinking-2507-FP8",
    "method": "sglang",
    "precision": "bfloat16",
    "e2e_s": 54.04,
    "batch_size": null,
    "gpu_type": "1xUnknown",
    "dataset": "gsm8k",
    "ignore_eos": true,
    "server_batch_size": 1,
    "model_type": "thinking"
}
```
</details>

<details>

<summary>detailed_results_*</summary>
```
# cat detailed_results_gsm8k.jsonl 
{"index": 0, "prompt_length": 4031, "success": true, "output_len": 1, "ttft": 35.56820008531213, "latency": 35.56820281967521, "itl": [], "error": ""}
{"index": 1, "prompt_length": 4031, "success": true, "output_len": 1, "ttft": 35.565046813338995, "latency": 35.565052550286055, "itl": [], "error": ""}
{"index": 2, "prompt_length": 4031, "success": true, "output_len": 1, "ttft": 35.56619094312191, "latency": 35.56619391031563, "itl": [], "error": ""}
{"index": 3, "prompt_length": 4031, "success": true, "output_len": 1, "ttft": 35.56578540802002, "latency": 35.56579086370766, "itl": [], "error": ""}
...
{"index": 99, "prompt_length": 4031, "success": true, "output_len": 1, "ttft": 54.00317149795592, "latency": 54.00317497737706, "itl": [], "error": ""}
```
</details>
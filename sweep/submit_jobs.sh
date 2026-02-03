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
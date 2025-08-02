
# UCSB URA Chat Log Classification using LLM

This repository contains code, data, and outputs for my UCSB Undergraduate Research Assistant (URA) project on chat classification using large language models (LLMs). The project analyzes chat transcripts from experimental economics games and classifies them into categories such as Coordination, Efficiency, Conflict, Inequality, and Unknown.

## Repository Structure

- **[data/](data)**: Raw and processed CSV files used for input and analysis.
  - `id_chat_input.csv`, `master.csv`: Main datasets of chat transcripts and metadata.
  - `totals_model5.csv`, `totals_model6.csv`: Aggregated results for models 5 and 6.

- **[jupyter-notebook/](jupyter-notebook)**: Jupyter notebooks for data visualization and simulation.
  - `chat_llm_data_visuals.ipynb`: Visual analysis of chat data and model outputs.
  - `chat_llm_openai_simulations.ipynb`: Simulations and experiments using OpenAI models.

- **[mysql/](mysql)**: SQL queries for database analysis and extraction.
  - `model6_queries.sql`: SQL scripts related to model 6 outputs and analysis.

- **[outputs/](outputs)**: Model outputs and summary files.
  - `model4/`, `model5/`, `model6/`: Folders for each model's results.
    - `sum_model_4.csv`, `sum_model_5.csv`, `sum_model_6.csv`: Summary CSVs for each model.
    - `chatgpt_outputsM4/`, `chatgpt_outputsM5/`, `chatgpt_outputsM6/`: Individual simulation outputs (CSV files) for each model and run.

- **[ucsb_ura_chat_classification_llm.pdf](ucsb_ura_chat_classification_llm.pdf)**: Project documentation, including methodology, results, and analysis.

## Project Overview

The project leverages LLMs to classify chat data from experimental games. Each chat is labeled according to behavioral categories, and multiple models/simulations are run to compare classification accuracy and consistency. Outputs are stored in organized folders for reproducibility and further analysis.

For more details, see the [PDF documentation](ucsb_ura_chat_classification_llm.pdf) in the repository.

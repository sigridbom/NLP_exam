# Natural Language Processing
Fall/winter exam 2024
Cognitive Science MSc at Aarhus University

Project by Linus Backström and Sigrid Bom. 

The analysis was done in Visual Studio Code using Python version 3.12.3 on the UCloud interactive HP system, managed by the eScience at centre at SDU.

### Structure of the repository
The different steps of the analysis are numbered, and they are supposed to be run in that order. Within each folder, either one or several scripts and notebooks can be found.

- 1\) data acquisition: Obtaining the data by merging two different datasets (one with labels, one with movie scripts) by their IMDb ID.
- 2\) data preprocessing: Cleaning the scripts from special characters, etc.
- 3\) model selection: Running different models (from a baseline model to a more advanced pretrained model) and comparing them. 

### Data
The final dataset is a merge of a dataset containing Bechdel-Wallace labels movies and a dataset containing movie scripts (KseniaGur, n.d.). 

The dataset with Bechdel-Wallace labels is scraped from the website: https://bechdeltest.com/
The dataset with movie scripts is from Kaggle https://www.kaggle.com/datasets/gufukuro/movie-scripts-corpus/data (KseniaGur, n.d.).

The final dataset is too big to be uploaded directly to GitHub. You can either run the scripts and get the data yourself, or you can download the different datasets from this google drive folder: https://drive.google.com/drive/folders/1vjT8pLPALMHdgPpkmojj3YzrFzOOz-GI?usp=sharing

The datasets which can be found in the google drive folder include the final dataset with labels and scripts, the dataset with Bechdel-Wallace labels, and the different train, validation and test datasets (one set is case senstive, one is lowercase).

To use Kaggle's API, you need to have a Kaggle user and a key, which is should be located in NLP_exam/1_data_acquisition/.kaggle/kaggle.json 
The kaggle.json file includes your username and a key, and it is downloaded automatically when created. Read more about it here: https://www.kaggle.com/docs/api 

<!--
### Models
One model can be found in the /output/models/ folder, and others can be found in the linked google drive folder (due to size limits).
- Models on Google drive include: KNN-regression, default random forest regression with all features and with a subset of features (58 predictors).
- Models on GitHub include: the model object after the randomized cross-validation search.
-->

#### References

KseniaGur (n.d.), Movie Scripts Corpus [Data set]. Retrieved December 7, 2024 from https://www.kaggle.com/datasets/gufukuro/movie-scripts-corpus/data 
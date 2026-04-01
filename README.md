# LLM Dinner Party: An NLP Analysis of AI-Generated Conversation

## Project Overview
This project demonstrates an end-to-end Natural Language Processing (NLP) pipeline analyzing an unstructured, AI-generated conversation between ten historical and cultural figures. The objective was to evaluate the LLM's prompt adherence, conversational balance, and semantic tone using advanced statistical text processing and interactive network visualization.

**View the Interactive Visualizations in the Notebook:** [INSERT NBVIEWER LINK HERE]

## Technical Stack
* **Languages & Environments:** Python, Jupyter Notebook, Docker
* **NLP & Text Processing:** spaCy (with custom EntityRulers), TextBlob, Gensim (LDA)
* **Data Manipulation:** pandas, NumPy, scikit-learn
* **Visualization:** Plotly, NetworkX, Matplotlib, Seaborn

## Methodology
The analysis was conducted across five distinct phases:
1. **Named Entity Recognition (NER) & Bouncer Logic:** Engineered custom alias mapping and override rules to force spaCy's default model to recognize specific guests even when the conversational tone shifted to casual first-name usage.
2. **Sentiment Trajectory Analysis:** Utilized lexicon-based scoring over a rolling average to track the emotional flow of the dinner party. 
3. **Lexical Frequency & POS Tagging:** Extracted core features (nouns) and attributes (adjectives) to measure prompt adherence. 
4. **Topic Modeling (LDA):** Deployed Micro-Corpus Engineering and n-gram modeling (Bigrams) to isolate distinct conversational themes (e.g., Science, Humor, Cooking).
5. **Network Co-Occurrence Visualization:** Built high-dimensional interactive charts to map concept-to-guest relationships and evaluate "Share of Voice."

## Key Strategic Insights & Limitations Discovered
Statistical text processing is highly effective for uncovering latent insights, but this analysis highlighted the necessity of human-in-the-loop engineering to ensure contextual accuracy:
* **The Semantic Gap:** The lexicon-based sentiment model successfully tracked general positivity but misclassified a humorous, self-deprecating anecdote as highly negative, highlighting the limitation of dictionary-based models against complex human nuances like sarcasm.
* **Domain-Specific Noise:** Token-level frequency extraction proved susceptible to context loss. For example, the terms "hot" and "potato" dominated the frequency charts until n-gram bigram filtering was applied to accurately categorize the icebreaker game "hot potato."

## How to Run This Project Locally
This project is fully containerized for reproducibility. 

1. Clone this repository to your local machine.
2. Ensure Docker Desktop is running.
3. Build the image using the provided Dockerfile:
   `docker build -t nlp-portfolio .`
4. Run the container:
   `docker run -p 8888:8888 nlp-portfolio`

# Adapting-CLIP-Embeddings-for-Visual-Semantic-Similarity
The methodology incorporates hard negative sampling, focal loss, and regularization techniques such as dropout and batch normalization. The model achieves a validation accuracy of 91.9%, with balanced precision, recall, and F1‑score.




# CLIP Visual Semantic Similarity

**One line**: CLIP ViT-B/32 embeddings + deep similarity head for image-caption matching.

## Quick start
1. Clone repo
2. Create env: `python -m venv venv && source venv/bin/activate`
3. Install: `pip install -r requirements.txt`
4. Download data: `bash data/download_data.sh --sample`
5. Run a quick test: `python src/train.py --config experiments/config.yaml --dry-run`

## Reproducibility
- Seed: 42
- PyTorch: 2.0
- Check `experiments/config.yaml` for hyperparameters

## License
MIT

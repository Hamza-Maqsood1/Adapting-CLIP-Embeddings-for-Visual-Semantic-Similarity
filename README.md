# Adapting CLIP Embeddings for Visual-Semantic Similarity
 
![Accuracy](https://img.shields.io/badge/Validation%20Accuracy-91.9%25-brightgreen)
![Model](https://img.shields.io/badge/Model-CLIP%20ViT--B%2F32-blue)
![Framework](https://img.shields.io/badge/Framework-PyTorch-orange)
![Domain](https://img.shields.io/badge/Domain-Multimodal%20AI-purple)
 
## 📌 Overview
 
Visual-semantic similarity matching images with their correct textual descriptions is a fundamental challenge in multimodal AI. Standard CLIP embeddings, while powerful, are not optimized for fine-grained similarity tasks out of the box.
 
This project adapts **CLIP ViT-B/32 embeddings** with a custom deep similarity head, incorporating **hard negative sampling**, **focal loss**, and regularization techniques to achieve **91.9% validation accuracy** on image-caption matching.
 
---
 
## 🎯 Problem Statement
 
- Off-the-shelf CLIP embeddings lack discriminative power for hard similarity cases
- Standard contrastive loss treats all negatives equally missing subtle distinctions
- Goal: Fine-tune a similarity head that learns to distinguish visually/semantically similar but incorrect pairs
---
 
## 🔬 Methodology
 
### Model Architecture
- **Base Encoder:** CLIP ViT-B/32 (frozen used as feature extractor)
- **Similarity Head:** Custom deep network on top of CLIP embeddings
- **Output:** Similarity score between image-text pairs
### Key Techniques
 
**Hard Negative Sampling**
- Instead of random negatives, selects the most confusing incorrect pairs
- Forces model to learn subtle distinctions
- Significantly improves generalization on difficult cases
**Focal Loss**
- Down-weights easy examples, focuses training on hard cases
- Prevents class imbalance from dominating training signal
- Originally from object detection adapted here for similarity learning
**Regularization**
- Dropout for preventing overfitting
- Batch Normalization for training stability
### Training Configuration
| Parameter | Value |
|---|---|
| Base Model | CLIP ViT-B/32 |
| Framework | PyTorch 2.0 |
| Loss Function | Focal Loss |
| Sampling Strategy | Hard Negative Sampling |
| Regularization | Dropout + Batch Normalization |
| Seed | 42 (reproducible) |
 
---
 
## 📊 Results
 
| Metric | Value |
|---|---|
| **Validation Accuracy** | **91.9%** |
| Precision | Balanced |
| Recall | Balanced |
| F1-Score | Balanced |
 
---
 
## 🛠️ Tech Stack
 
- **Framework:** PyTorch 2.0
- **Base Model:** OpenAI CLIP (ViT-B/32) via HuggingFace Transformers
- **Libraries:** NumPy · Scikit-learn · OpenCV · Matplotlib · FAISS · SHAP · Captum
- **Explainability:** SHAP + Captum for attention visualization
- **Language:** Python
---
 
## 🚀 Quick Start
 
```bash
# 1. Clone repo
git clone https://github.com/Hamza-Maqsood1/Adapting-CLIP-Embeddings-for-Visual-Semantic-Similarity.git
cd Adapting-CLIP-Embeddings-for-Visual-Semantic-Similarity
 
# 2. Create virtual environment
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
 
# 3. Install dependencies
pip install -r requirements.txt
 
# 4. Download data
bash download_data.sh --sample
 
# 5. Run dry test
python src/train.py --config experiments/config.yaml --dry-run
```
 
---
 
## 📁 Repository Structure
 
```
├── CLIP Embeddings for Visual-Semantic Similarity.ipynb  # Main notebook
├── download_data.sh          # Dataset download script
├── requirements.txt          # Dependencies
├── README.md                 # Documentation
└── LICENSE                   # MIT License
```
 
---
 
## 🔮 Future Work
 
- Extend to video-text matching
- Test on larger datasets (COCO, Flickr30K, CC3M)
- Integrate GradCAM for visual explainability
- Deploy as REST API using FastAPI
---
 
## 👤 Author
 
**Hamza Maqsood**
BS Artificial Intelligence University of Management and Technology, Lahore
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com/in/hamza-maqsood1)
[![GitHub](https://img.shields.io/badge/GitHub-Profile-black?logo=github)](https://github.com/Hamza-Maqsood1)
 
---
 
## 📄 License
 
MIT License see [LICENSE](LICENSE) for details.
 

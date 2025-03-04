# 🚀 Codewars Auto Uploader

Automatically fetch and upload your **Codewars** solutions to **GitHub** every day using **GitHub Actions**.

## 📌 Features
- Daily automated fetching of Codewars solutions at **14:00 (2:00 PM)**.
- Automatic commit and push to your GitHub repository.
- Supports multiple languages with correct file extensions.
- Easy configuration with environment secrets.

---

## 🔑 Requirements
1. **GitHub Account**.
2. **Codewars Account**.
3. **Personal Access Token (PAT)** with `repo` and `workflow` permissions.

---

## 🎯 How It Works
1. The **Ruby script** fetches your latest completed katas from Codewars.
2. Solutions are saved in the **`solutions/`** folder with the appropriate file extension.
3. A **GitHub Action** automatically runs every day at **14:00 (2:00 PM)**.
4. New solutions are committed and pushed to your repository.

---

## 🛠️ Project Structure
```plaintext
codewars_auto_uploader/
├── .github/
│   └── workflows/
│       └── update_codewars.yml    # GitHub Actions configuration
├── fetch_solutions.rb             # Ruby script to fetch solutions
└── solutions/                     # Folder for saving solutions
```

---

## 🔌 Setup Instructions

### 1. Clone this Repository
```bash
git clone https://github.com/YOUR_USERNAME/codewars_auto_uploader.git
cd codewars_auto_uploader
```

### 2. Add Your Codewars Username
Edit **`fetch_solutions.rb`**:
```ruby
USERNAME = 'YOUR_USERNAME'
```

### 3. Generate GitHub Token
Follow these steps to generate your **Personal Access Token (PAT)**:
1. Go to **GitHub Settings → Developer Settings → Personal Access Tokens**.
2. Generate a new token with:
   - `repo`
   - `workflow`
3. Copy the token.

### 4. Add Secret to GitHub
1. Go to your repo **Settings → Secrets and Variables → Actions**.
2. Click **New repository secret**.
3. Name it **`GH_TOKEN`**.
4. Paste your token.

### 5. Upload the Project
```bash
git init
git add .
git commit -m "🚀 Initial Commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/codewars_auto_uploader.git
git push -u origin main
```

---

## 🔥 Supported Languages
| Language   | Extension |
|------------|-----------|
| Ruby       | `.rb`    |
| JavaScript | `.js`    |
| Python     | `.py`    |
| Java       | `.java`  |
| C#         | `.cs`    |

---

## 🚨 Important
- Make sure your GitHub token has **repo** and **workflow** permissions.
- The action will only run automatically if your repository is public or you enable GitHub Actions in private repos.

---

## 🎯 Final Result
Once everything is set up, your Codewars solutions will be automatically uploaded to your GitHub repo every day at **14:00 (2:00 PM)**. 

If you want to modify the schedule or add more languages, just let me know! 🔥

---

## 📄 License
MIT License

Made with ❤️ by Bimai6.

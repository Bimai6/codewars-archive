# 🚀 Codewars Auto Uploader

Automatically fetch and upload your **Codewars** history to **GitHub** every day using **GitHub Actions**.

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
    ├── ruby/                      # Ruby solutions
    ├── javascript/                # JavaScript solutions
    ├── python/                    # Python solutions
    └── ...                        # Other language subfolders

```

---

## 🔌 Setup Instructions

### 1. Clone this Repository
```bash
git clone https://github.com/Bimai6/codewars-archive.git
cd codewars-archive
```

### 2. Add Your Codewars Username
Edit **`fetch_solutions.rb`**:
```ruby
USERNAME = 'YOUR_USERNAME'
```

### 3. Configurate GitHub Actions
The action will automatically use the GITHUB_TOKEN provided by GitHub Actions to authenticate and push changes to the repository.

No need to generate or configure a Personal Access Token (PAT). The GITHUB_TOKEN will automatically have the necessary permissions to push changes to public repositories.

### 4. Upload the Project
```bash
git init
git add .
git commit -m "🚀 Initial Commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/codewars-archive.git
git push -u origin main
```

---

## 🔥 Supported Languages
| Language   | Extension |
|------------|-----------|
| Ruby       | `.rb`     |
| JavaScript | `.js`     |
| Python     | `.py`     |
| Java       | `.java`   |
| C#         | `.cs`     |
| C          | `.c`      |
| C++        | `.cpp`    |
| Go         | `.go`     |
| Swift      | `.swift`  |
| TypeScript | `.ts`     |
| Rust       | `.rs`     |
| Scala      | `.scala`  |
| PHP        | `.php`    |
| Kotlin     | `.kt`     |
| Haskell    | `.hs`     |
| Perl       | `.pl`     |
| Lua        | `.lua`    |
| R          | `.r`      |
| Elixir     | `.ex`     |
| Clojure    | `.clj`    |
| F#         | `.fs`     |
| Objective-C| `.m`      |
| Dart       | `.dart`   |
| Bash       | `.sh`     |
| SQL        | `.sql`    |
| Groovy     | `.groovy` |
| PowerShell | `.ps1`    |
| Shell      | `.sh`     |


---

## 🚨 Important
- Make sure your GitHub token has **repo** and **workflow** permissions.
- The action will only run automatically if your repository is public or you enable GitHub Actions in private repos.

---

## 🎯 Final Result
Once everything is set up, your Codewars history will be automatically uploaded to your GitHub repository every day at **14:00 (2:00 PM)**. Unfortunately, there is no API resource for your own code, so you'll need to manually copy it into its respective file.

If you want to modify the schedule or add more languages, just let me know! 🔥



---

## 📄 License
MIT License

Made with ❤️ by Bimai6.

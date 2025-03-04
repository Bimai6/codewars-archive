require 'net/http'
require 'json'
require 'fileutils'

URL = "https://www.codewars.com/api/v1/users/Bimai6/code-challenges/completed"
SOLUTIONS_FOLDER = 'solutions'

FileUtils.mkdir_p(SOLUTIONS_FOLDER)

EXTENSIONS = {
  'ruby' => '.rb',
  'javascript' => '.js',
  'python' => '.py',
  'java' => '.java',
  'csharp' => '.cs',
  'c' => '.c',
  'cpp' => '.cpp',
  'go' => '.go',
  'swift' => '.swift',
  'typescript' => '.ts',
  'rust' => '.rs',
  'scala' => '.scala',
  'php' => '.php',
  'kotlin' => '.kt',
  'haskell' => '.hs',
  'perl' => '.pl',
  'lua' => '.lua',
  'r' => '.r',
  'elixir' => '.ex',
  'clojure' => '.clj',
  'fsharp' => '.fs',
  'objectivec' => '.m',
  'dart' => '.dart',
  'bash' => '.sh',
  'sql' => '.sql',
  'groovy' => '.groovy',
  'powershell' => '.ps1',
  'shell' => '.sh'
}

def fetch_solutions
  uri = URI(URL)
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)

  data['data'].each do |challenge|
    title = challenge['name'].gsub(/[^0-9A-Za-z]/, '_')
    language = challenge['completedLanguages'].first
    extension = EXTENSIONS[language] || '.txt'
    file = "#{SOLUTIONS_FOLDER}/#{title}#{extension}"

    unless File.exist?(file)
      puts "Adding solution: #{title}"
      File.write(file, "Kata: #{challenge['name']}\nURL: #{challenge['url']}\nLanguage: #{language}\n")
    end
  end
end

fetch_solutions
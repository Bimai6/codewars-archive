require 'net/http'
require 'json'
require 'fileutils'
require 'time'

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

    kata_slug = challenge['name'].downcase.gsub(' ', '-').gsub(/[^\w-]/, '')  
    url = "https://www.codewars.com/kata/#{kata_slug}"

    completed_at = Time.parse(challenge['completedAt']).strftime('%Y-%m-%d %H:%M:%S')

    language_folder = "#{SOLUTIONS_FOLDER}/#{language}"
    FileUtils.mkdir_p(language_folder)

    file = "#{language_folder}/#{title}#{extension}"

    unless File.exist?(file)
      puts "Adding solution: #{title} in #{language}"
      File.write(file, "Kata: #{challenge['name']}\nLanguage: #{language}\nCompleted At: #{completed_at}\n#{url}\n")
    end
  end
end

fetch_solutions

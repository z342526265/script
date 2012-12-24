require 'yaml'
hash = {1=>'aaaa',2=>'bbb',3=>'cccc',4=>'dddd'}
File.open("yaml.yaml","wb"){|f| YAML.dump(hash,f)}
data = YAML.load_file('yaml.yaml')
p data

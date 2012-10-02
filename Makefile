JSON_TO_YML = ruby -e 'require "json"; require "yaml"; puts YAML.dump(JSON.parse(STDIN.read))'

senators.yml: senators.json
	$(JSON_TO_YML) < $^ > $@

all: senators.yml

.PHONY: all

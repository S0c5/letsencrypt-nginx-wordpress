run: stop  before letsencrypt wordpress

stop: 
	./scripts/compile_templates.sh
	./scripts/stop_containers.sh

before: 
	./scripts/compile_templates.sh

letsencrypt:
	./scripts/run_letsencrypt.sh

clean: 
	./scripts/compile_templates.sh
	./scripts/rm_letsencrypt.sh
	./scripts/rm_wordpress.sh
	./scripts/rm_templates.sh
	
wordpress: 
	./scripts/run_wordpress.sh


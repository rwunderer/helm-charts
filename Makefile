
.PHONY:test
test: kubeval pluto

kubeval:
	@set -e; for c in charts/*; do echo $$c; helm template $$c | kubeval; echo; done

pluto:
	@set -e; for c in charts/*; do echo $$c; helm template $$c | pluto detect -; echo; done

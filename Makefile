CC     = cc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -O2

TARGET = yconfig
ORDER  = core services
DIRS   = $(patsubst %/Makefile,%,$(wildcard */Makefile))
REST   = $(filter-out $(ORDER),$(DIRS))

$(TARGET):
	@for dir in $(ORDER) $(REST); do \
		if [ -d "$$dir" ] && [ -f "$$dir/Makefile" ]; then \
			$(MAKE) -C "$$dir"; \
		fi; \
	done
	$(CC) $(CFLAGS) -o $@ $(wildcard */dist/*.o)

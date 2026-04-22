GREEN = \033[92m
END = \033[0m

.PHONY: build
build:
	docker compose build latex

.PHONY: pdf
pdf:
	docker compose up
	mv ./latex/TCC_PDF.pdf ./
	docker compose run --rm latex latexmk -c
	@echo "$(GREEN)PDF gerado com sucesso.$(END)"

# --- NOVA REGRA PARA ASSISTIR AOS ARQUIVOS (HOT RELOAD) ---
.PHONY: watch
watch:
	docker compose run --rm latex latexmk -pdf -shell-escape -view=none -pvc -jobname=TCC_PDF tcc.tex
	
.PHONY: clean
clean:
	docker compose run --rm latex latexmk -c

hooks:
	chmod +x ./.githooks/post-commit.sh
	ln -f ./.githooks/post-commit.sh .git/hooks/post-commit
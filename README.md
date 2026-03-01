# TCC 1

Este repositório armazena o código fonte e texto do meu Trabalho de Conclusão de Curso 1 (TCC1).

Baseado no template original: [https://github.com/fga-unb/template-latex-tcc](https://github.com/fga-unb/template-latex-tcc).

## Ajustes e Melhorias Realizadas

Para garantir a compatibilidade e facilitar o desenvolvimento, foram feitos os seguintes ajustes neste repositório:

- **Docker Atualizado**: Migração da imagem base para `debian:bookworm-slim` (compatível com sistemas modernos) e ajuste na instalação de dependências (Pygments via apt).
- **Automação no VS Code**: Configuração de `settings.json` para compilar automaticamente ao salvar (`Run on Save`) e verificação ortográfica (`Code Spell Checker`).
- **Git Hooks**: Script `post-commit` configurado para compactar imagens automaticamente, contornando limites de tamanho do GitHub.

## Comandos

Para começar a usar, execute os comandos abaixo no terminal:

### 1. Configuração Inicial
Instala os hooks do git para gestão automática de imagens.
```bash
make hooks
```

### 2. Gerar PDF
Compila o projeto usando Docker e gera o arquivo `TCC_PDF.pdf`.
```bash
make pdf
```

### 3. Limpeza
Remove arquivos temporários da compilação.
```bash
make clean
```

## Edição e Imagens

- **Conteúdo**: Edite os arquivos `.tex` dentro de `latex/editaveis/`.
- **Imagens**: Coloque suas imagens na pasta `latex/figuras/`.
  - **Atenção**: O template aceita apenas imagens em formato **EPS**.
  - O sistema compacta automaticamente as imagens em `figuras.zip` ao fazer commit.

## VS Code (Recomendado)

Se estiver usando o VS Code, as extensões recomendadas (Spell Checker e Run on Save) já estão pré-configuradas na pasta `.vscode`. Basta aceitar as recomendações de instalação do editor.
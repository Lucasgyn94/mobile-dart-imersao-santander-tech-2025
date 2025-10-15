📚 1. FUNDAMENTOS: O QUE É GIT?
* Git é um sistema de controle de versão distribuído criado por Linus Torvalds em 2005. 
* Diferente de sistemas centralizados, cada desenvolvedor tem uma cópia completa do histórico do projeto.

🏗️ 2. ARQUITETURA DO GIT
### Os Três Estados
```
Working Directory → Staging Area (Index) → Repository (.git)
     (modificado)      (preparado)           (commitado)

```

### Áreas de Trabalho
1. __Working Directory__: arquivos que estamos editando em nosso computador local.
2. __Staging Area__: snapshot preparado para commit
3. __Repository__: histórico permanente de commits.

🚀 3. COMANDOS ESSENCIAIS
### Configuração Inicial
```
# Identidade (obrigatório)
git config --global user.name "Seu Nome"
git config --global user.email "seu@email.com"

# Editor padrão
git config --global core.editor "code --wait"

# Configurações úteis
git config --global init.defaultBranch main
git config --global pull.rebase false
git config --global core.autocrlf true  # Windows
git config --global core.autocrlf input # Mac/Linux

# Ver configurações
git config --list
git config --global --list

```

### Iniciando um Repositório
```
# Novo repositório
git init

# Clonar existente
git clone https://github.com/usuario/repo.git
git clone https://github.com/usuario/repo.git novo-nome

```

4. WORKFLOW BÁSICO
### Ciclo Fundamental
```
# 1. Verificar status
git status
git status -s  # formato curto

# 2. Adicionar arquivos
git add arquivo.txt           # arquivo específico
git add .                     # todos os arquivos
git add *.js                  # pattern matching
git add -p                    # adicionar interativamente

# 3. Fazer commit
git commit -m "Mensagem descritiva"
git commit -am "Msg"          # add + commit (apenas tracked files)
git commit --amend            # modificar último commit

# 4. Ver histórico
git log
git log --oneline
git log --graph --all --decorate
git log -p                    # mostra diferenças
git log --stat                # estatísticas
git log --since="2 weeks"     # filtro temporal
git log --author="Nome"       # filtro por autor

```

### Trabalhando com Diferenças
```
# Ver modificações
git diff                      # working vs staging
git diff --staged             # staging vs último commit
git diff HEAD                 # working vs último commit
git diff branch1 branch2      # entre branches
git diff commit1 commit2      # entre commits

# Ferramentas visuais
git difftool

```

🌿 5. BRANCHES: O PODER DO GIT
## Conceitos
* Branches são ponteiros leves para commits. __HEAD__ aponta para o branch atual.

### Operações com Branches
```
# Listar branches
git branch                    # locais
git branch -r                 # remotos
git branch -a                 # todos
git branch -v                 # com último commit

# Criar branch
git branch nome-branch
git checkout -b nome-branch   # criar e mudar
git switch -c nome-branch     # forma moderna

# Mudar de branch
git checkout nome-branch
git switch nome-branch        # forma moderna

# Deletar branch
git branch -d nome-branch     # safe delete
git branch -D nome-branch     # force delete

# Renomear branch
git branch -m novo-nome       # branch atual
git branch -m antigo novo     # outro branch

```

### Merging: Unindo Históricos
```
# Merge padrão
git checkout main
git merge feature-branch

# Tipos de merge
git merge --no-ff branch      # sempre cria merge commit
git merge --squash branch     # agrupa commits em um
git merge --ff-only branch    # só se for fast-forward

# Abortar merge
git merge --abort

```

### Rebase: Reescrevendo Histórico
```
# Rebase básico
git checkout feature
git rebase main

# Rebase interativo (PODEROSO!)
git rebase -i HEAD~3          # últimos 3 commits
git rebase -i commit-hash

# Durante rebase interativo, você pode:
# pick   = usar commit
# reword = editar mensagem
# edit   = pausar para editar
# squash = mesclar com anterior
# fixup  = mesclar sem mensagem
# drop   = remover commit

# Continuar/cancelar rebase
git rebase --continue
git rebase --abort
git rebase --skip

```

### Merge vs Rebase: Quando Usar?
```
MERGE:
✅ Preserva histórico completo
✅ Seguro para branches públicos
❌ Histórico pode ficar complexo

REBASE:
✅ Histórico linear e limpo
✅ Ótimo antes de merge para main
❌ NUNCA em branches públicos/compartilhados

```

🔄 6. TRABALHANDO COM REMOTOS
### Gerenciando Remotos
```
# Ver remotos
git remote
git remote -v
git remote show origin

# Adicionar remoto
git remote add origin https://github.com/user/repo.git
git remote add upstream https://github.com/original/repo.git

# Modificar URL
git remote set-url origin nova-url

# Remover remoto
git remote remove nome
```

### Sincronizando
```
# Fetch: baixa sem mesclar
git fetch origin
git fetch --all
git fetch --prune             # remove refs deletadas

# Pull: fetch + merge
git pull origin main
git pull --rebase origin main # fetch + rebase

# Push: envia commits
git push origin main
git push -u origin main       # define upstream
git push --all                # todos os branches
git push --tags               # enviar tags
git push --force              # ⚠️ CUIDADO! Reescreve histórico
git push --force-with-lease   # mais seguro que --force


```

🏷️ 7. TAGS: MARCANDO VERSÕES
```
# Tag leve
git tag v1.0.0

# Tag anotada (recomendada)
git tag -a v1.0.0 -m "Versão 1.0.0 - Release inicial"

# Tag em commit específico
git tag -a v1.0.0 commit-hash -m "Mensagem"

# Listar tags
git tag
git tag -l "v1.*"

# Ver detalhes
git show v1.0.0

# Push de tags
git push origin v1.0.0
git push origin --tags

# Deletar tag
git tag -d v1.0.0             # local
git push origin :refs/tags/v1.0.0  # remoto
git push origin --delete v1.0.0    # remoto (alternativa)

# Checkout de tag
git checkout v1.0.0
git checkout -b branch-from-tag v1.0.0

```

🔧 8. COMANDOS AVANÇADOS
### Stash: Salvando Trabalho Temporário
```
# Salvar mudanças
git stash
git stash save "Descrição"
git stash -u                  # incluir untracked
git stash --all               # incluir tudo

# Listar stashes
git stash list

# Aplicar stash
git stash apply               # mantém na lista
git stash pop                 # remove da lista
git stash apply stash@{2}     # stash específico

# Ver conteúdo
git stash show
git stash show -p

# Criar branch de stash
git stash branch novo-branch

# Limpar
git stash drop stash@{0}
git stash clear               # remove todos
```

#### Cherry-pick: Aplicar Commits Específicos
```
# Aplicar um commit
git cherry-pick commit-hash

# Múltiplos commits
git cherry-pick commit1 commit2

# Range de commits
git cherry-pick commit1..commit2

# Sem commit automático
git cherry-pick -n commit-hash

# Resolver conflitos
git cherry-pick --continue
git cherry-pick --abort

```

### Reset: Desfazendo Mudanças
```
# Tipos de reset
git reset --soft HEAD~1       # mantém staging e working
git reset --mixed HEAD~1      # mantém apenas working (padrão)
git reset --hard HEAD~1       # ⚠️ descarta tudo

# Mover para commit específico
git reset --hard commit-hash

# Desfazer reset (usar reflog)
git reflog
git reset --hard HEAD@{1}

```

### Revert: Desfazer com Novo Commit
```
# Reverte um commit (seguro para branches públicos)
git revert commit-hash
git revert HEAD

# Múltiplos commits
git revert commit1..commit3

# Sem commit automático
git revert -n commit-hash

```

### Reflog: Histórico de Referências
```
# Ver histórico de HEAD
git reflog
git reflog show branch-name

# Recuperar trabalho "perdido"
git reflog
git checkout HEAD@{5}
git reset --hard HEAD@{2}

# Limpar reflog (geralmente não necessário)
git reflog expire --expire=now --all

```

### Bisect: Encontrar Bug
```
# Iniciar bisect
git bisect start
git bisect bad                # commit atual tem bug
git bisect good commit-hash   # commit bom conhecido

# Git testa commits automaticamente
git bisect good               # commit atual é bom
git bisect bad                # commit atual tem bug

# Automatizar com script
git bisect run test-script.sh

# Finalizar
git bisect reset

```

🔍 9. INSPEÇÃO E BUSCA

```
# Buscar em código
git grep "termo"
git grep -n "termo"           # com números de linha
git grep --count "termo"      # contagem

# Buscar quem modificou
git blame arquivo.txt
git blame -L 10,20 arquivo.txt  # linhas específicas

# Ver histórico de arquivo
git log -- arquivo.txt
git log -p arquivo.txt        # com diferenças

# Encontrar commit que introduziu mudança
git log -S "função()"         # busca no conteúdo
git log -G "regex"            # busca com regex

# Listar arquivos em commit
git show commit-hash --name-only
git ls-tree -r branch-name

```

📋 10. .GITIGNORE: O QUE NÃO VERSIONAR
```
# .gitignore
# Comentários começam com #

# Arquivos específicos
secrets.txt
config.local.js

# Padrões
*.log
*.tmp
*.swp

# Diretórios
node_modules/
dist/
.cache/

# Negação (não ignorar)
!important.log

# Ignorar apenas na raiz
/TODO

# Ignorar em qualquer lugar
**/build/

# Templates úteis
**.DS_Store          # Mac
*Thumbs.db          # Windows
*.pyc               # Python
node_modules/       # Node.js
.env                # Environment vars

```

### Comandos Relacionados
```
# Ver arquivos ignorados
git status --ignored

# Remover arquivo já rastreado
git rm --cached arquivo.txt
git rm -r --cached pasta/

# Gitignore global
git config --global core.excludesfile ~/.gitignore_global

# Ignorar mudanças temporariamente
git update-index --assume-unchanged arquivo.txt
git update-index --no-assume-unchanged arquivo.txt

```

🎯 11. WORKFLOWS PROFISSIONAIS
### Git Flow
```
main       → produção (sempre estável)
develop    → desenvolvimento
feature/*  → novas funcionalidades
release/*  → preparação de releases
hotfix/*   → correções urgentes

Fluxo:
feature → develop → release → main
                              ↓
                           hotfix → main + develop

```

### GitHub Flow (Simples)

```
main       → produção
feature/*  → branches de trabalho

Fluxo:
1. Criar branch de main
2. Fazer commits
3. Abrir Pull Request
4. Review e discussão
5. Merge para main
6. Deploy

```

### Trunk-Based Development

```
main       → único branch principal
feature/*  → branches de curta duração (< 1 dia)

Fluxo:
- Commits frequentes direto na main
- Feature flags para código incompleto
- CI/CD robusto

```

🛡️ 12. BOAS PRÁTICAS
### Mensagens de Commit

```
Formato:
<tipo>(<escopo>): <descrição curta>

<corpo opcional>

<rodapé opcional>

Tipos:
feat:     nova funcionalidade
fix:      correção de bug
docs:     documentação
style:    formatação
refactor: refatoração
test:     testes
chore:    manutenção

Exemplos:
feat(auth): adiciona login com Google
fix(api): corrige timeout em requisições lentas
docs(readme): atualiza instruções de instalação

```

### Commits Atômicos
```
✅ Cada commit = uma mudança lógica
✅ Deve ser possível reverter sem quebrar
✅ Mensagem clara do que e por que
❌ Não misture múltiplas mudanças
❌ Evite "WIP", "fix", "alterações"

```

### Branch Naming
```
feature/nome-funcionalidade
bugfix/descricao-bug
hotfix/correcao-critica
release/v1.2.0
docs/atualizar-readme
refactor/melhorar-performance

```

🚨 13. RESOLUÇÃO DE CONFLITOS

```
# Quando ocorre conflito
git merge feature
# CONFLICT in arquivo.txt

# Abrir arquivo e ver marcadores
<<<<<<< HEAD
código atual
=======
código incoming
>>>>>>> feature

# Resolver manualmente e depois
git add arquivo.txt
git commit

# Ferramentas visuais
git mergetool

# Preferir versão específica
git checkout --ours arquivo.txt    # nossa versão
git checkout --theirs arquivo.txt  # versão deles
```

🔐 14. SEGURANÇA E AUTENTICAÇÃO
### SSH Keys
```
# Gerar chave
ssh-keygen -t ed25519 -C "seu@email.com"

# Adicionar ao ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Testar conexão
ssh -T git@github.com

# Clonar com SSH
git clone git@github.com:user/repo.git

```

### GPG para Assinar Commits
```
# Gerar chave GPG
gpg --full-generate-key

# Listar chaves
gpg --list-secret-keys --keyid-format=long

# Configurar Git
git config --global user.signingkey KEY_ID
git config --global commit.gpgsign true

# Commit assinado
git commit -S -m "Mensagem"

```

⚡ 15. OTIMIZAÇÃO E MANUTENÇÃO
```
# Limpar repositório
git gc                        # garbage collection
git prune                     # remove objetos órfãos

# Ver tamanho
git count-objects -vH

# Verificar integridade
git fsck

# Otimizar
git repack -Ad
git prune-packed

# Limpar arquivos não rastreados
git clean -n                  # dry run
git clean -fd                 # force + diretórios
git clean -fdx                # incluir ignorados

```

🎓 16. COMANDOS INTERMEDIÁRIOS/AVANÇADOS
### Submodules
```
# Adicionar submódulo
git submodule add https://github.com/user/repo.git path/

# Clonar com submódulos
git clone --recurse-submodules url

# Atualizar submódulos
git submodule update --init --recursive
git submodule update --remote

# Remover submódulo
git submodule deinit path/
git rm path/
```

### Worktrees
```
# Trabalhar em múltiplos branches simultaneamente
git worktree add ../projeto-feature feature-branch

# Listar worktrees
git worktree list

# Remover
git worktree remove ../projeto-feature

```

### Hooks
```
# Localização
.git/hooks/

# Exemplos comuns
pre-commit          # antes do commit
pre-push            # antes do push
post-merge          # após merge
commit-msg          # validar mensagem

# Exemplo pre-commit
#!/bin/bash
npm test

```

🆘 17. TROUBLESHOOTING COMUM

```
# Desfazer último commit (mantendo mudanças)
git reset --soft HEAD~1

# Desfazer último commit (descartando mudanças)
git reset --hard HEAD~1

# Desfazer push (criar novo commit)
git revert HEAD
git push

# Recuperar commit "perdido"
git reflog
git checkout commit-hash

# Mudar último commit
git commit --amend

# Mudar autor do último commit
git commit --amend --author="Nome <email>"

# Limpar mudanças não commitadas
git checkout .                # arquivos modificados
git clean -fd                 # arquivos não rastreados

# Branch divergiu do remoto
git pull --rebase origin main

# Reescrever histórico (últimos N commits)
git rebase -i HEAD~N

```

📊 18. ALIASES ÚTEIS

```
# Configurar aliases
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual 'log --graph --all --decorate --oneline'
git config --global alias.amend 'commit --amend --no-edit'
git config --global alias.undo 'reset --soft HEAD~1'

# Usar
git st
git visual

```

```

```

```

```


```

```

```

```

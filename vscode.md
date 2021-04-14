# VSCode setup

## Styling

- **Theme:** [One Dark Pro](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.Material-theme)
- **Font:** [Fira Code](https://github.com/tonsky/FiraCode)


## Extensions

- AlDuncanson.react-hooks-snippets
- andys8.jest-snippets
- cssho.vscode-svgviewer
- dbaeumer.vscode-eslint
- eamodio.gitlens
- esbenp.prettier-vscode
- formulahendry.code-runner
- fvclaus.sort-json-array
- GitHub.vscode-pull-request-github
- jkjustjoshing.vscode-text-pastry
- jpoissonnier.vscode-styled-components
- mechatroner.rainbow-csv
- ms-python.python
- ms-python.vscode-pylance
- ms-toolsai.jupyter
- ms-vscode.vscode-typescript-next
- msjsdiag.debugger-for-chrome
- naumovs.color-highlight
- planbcoding.vscode-react-refactor
- redhat.vscode-yaml
- silvenon.mdx
- sleistner.vscode-fileutils
- Tyriar.lorem-ipsum
- VisualStudioExptTeam.vscodeintellicode
- wayou.vscode-todo-highlight
- wmaurer.change-case
- xabikos.ReactSnippets
- yzhang.markdown-all-in-one
- zhuangtongfa.material-theme

## Settings

```json
{
  "workbench.colorTheme": "One Dark Pro",
  "files.defaultLanguage": "{activeEditorLanguage}",
  "editor.minimap.enabled": false,
  "editor.snippetSuggestions": "top",
  "workbench.startupEditor": "newUntitledFile",
  "editor.scrollBeyondLastLine": false,
  "editor.smoothScrolling": true,
  "editor.mouseWheelScrollSensitivity": 0.9,
  "editor.fontFamily": "Fira Code",
  "editor.fontSize": 13,
  "editor.fontLigatures": true,
  "editor.tabSize": 4,
  "editor.insertSpaces": true,
  "editor.renderWhitespace": "all",
  "editor.cursorStyle": "line",
  "editor.quickSuggestionsDelay": 0,
  "workbench.commandPalette.history": 2,
  "editor.multiCursorModifier": "ctrlCmd",
  "editor.detectIndentation": true,
  "emmet.showExpandedAbbreviation": "inMarkupAndStylesheetFilesOnly",
  "diffEditor.ignoreTrimWhitespace": false,
  "breadcrumbs.enabled": true,
  "files.insertFinalNewline": false,
  "files.trimTrailingWhitespace": false,
  "git.autofetch": true,
  "workbench.editor.highlightModifiedTabs": true,
  "javascript.validate.enable": false,
  "editor.formatOnPaste": false,
  "npm.packageManager": "yarn",
  "eslint.packageManager": "yarn",
  "files.exclude": {
    "**/node_modules/": true,
    "**/flow-typed/": true,
    "**/vendor-composer/": true,
    "**/vendor/": true
  },
  "files.watcherExclude": {
    "**/node_modules/": true,
    "**/.git/objects/**": true,
    "**/.git/subtree-cache/**": true,
    "**/flow-typed/": true,
    "**/vendor-composer/": true,
    "**/vendor/": true
  },
  "window.title": "${activeEditorShort}${separator}/${activeFolderShort}${separator}${rootName}",
  "editor.suggestSelection": "first",
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "[javascript,json,jsonc,html,yaml]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[python]": {
    "editor.defaultFormatter": "ms-python.python"
  },
  "python.formatting.provider": "black",
  "javascript.updateImportsOnFileMove.enabled": "always",

  "files.associations": {
    "*.mdx": "mdx"
  },
  "python.pythonPath": "python3",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "gitlens.codeLens.enabled": false,
  "gitlens.views.repositories.branches.layout": "list",
  "todohighlight.isCaseSensitive": false,
  "oneDarkPro.vivid": false,
  "explorer.confirmDragAndDrop": false,
  "editor.rulers": [100],
  "terminal.integrated.shell.osx": "/bin/zsh",
  "debug.inlineValues": true,
  "python.languageServer": "Pylance",
  "html.autoClosingTags": false,
  "extensions.ignoreRecommendations": false,
  "workbench.editorAssociations": [
    {
      "viewType": "jupyter.notebook.ipynb",
      "filenamePattern": "*.ipynb"
    }
  ],
  "editor.columnSelection": false,
  "workbench.editor.showTabs": true,
  "eslint.codeAction.showDocumentation": {
    "enable": true
  },
  "git.confirmSync": false,
}
```
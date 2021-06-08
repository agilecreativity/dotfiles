# Example Clojure LSP server configuration

## Groovy-LSP

Need to setup the jars using the following links

https://github.com/prominic/groovy-language-server

```
./gradlew build
# Then copy the artifact from
# 18mb file
cp ./build/libs/groovy-language-server-all.jar ~/apps/dotfiles/libs/lsp-groovy/groovy-language-server-all.jar
```

Then edit the Spacemacs config to use it

```elisp
;; In your init.el
(groovy :variables
        groovy-backend 'lsp
        groovy-lsp-jar-path "~/apps/dotfiles/libs/lsp-groovy/groovy-language-server-all.jar")
```

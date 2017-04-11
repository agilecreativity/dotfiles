;; https://github.com/boot-clj/boot/wiki/Cider-REPL
;; Note: should be symlink to ~/.boot/profile.boot
(deftask cider "CIDER profile"
   []
   (require 'boot.repl)
   (swap! @(resolve 'boot.repl/*default-dependencies*)
          concat '[[org.clojure/tools.nrepl "0.2.12"]
                   [cider/cider-nrepl "0.15.0-SNAPSHOT"]
                   [refactor-nrepl "2.3.0-SNAPSHOT"]])
   (swap! @(resolve 'boot.repl/*default-middleware*)
          concat '[cider.nrepl/cider-middleware
                   refactor-nrepl.middleware/wrap-refactor])
   identity)

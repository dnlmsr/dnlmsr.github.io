(require 'ox-publish)

(setq org-confirm-babel-evaluate nil)
(setq org-export-babel-evaluate t)
(setq org-export-use-babel t)

(org-babel-do-load-languages 'org-babel-load-languages'((shell . t)))

(setq org-html-validation-link nil 
      org-html-head-include-scripts nil
      org-html-head-include-default-style nil
      )
(setq org-publish-project-alist
      '(("mosis.xyz"
         :recursive t
         :base-directory "./"
         :publishing-directory "./public"
         :publishing-function org-html-publish-to-html
         :with-author t
         :with-creator t
         :section-numbers nil
         :time-stamp-file t
         :language en
         )))

(org-publish-all t)

(message "Build complete!")
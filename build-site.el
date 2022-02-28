(require 'ox-publish)
(setq org-publish-project-alist
      '(("mosis.xyz"
         :recursive t
         :base-directory "./"
         :publishing-directory "./docs"
         :publishing-function org-html-publish-to-html)))

(org-publish-all t)

(message "Build complete!")

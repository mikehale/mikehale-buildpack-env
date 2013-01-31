;;; begin package lazy install

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
		      starter-kit
                      starter-kit-bindings
                      starter-kit-ruby
                      starter-kit-js
                      ;; starter-kit-lisp
                      ;; starter-kit-eshell
                      ;; auto-complete
                      ;; browse-kill-ring
                      ;; desktop
                      ;; ruby-block
                      ;; ruby-end
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;; end package lazy install

;;; misc

(defun kill-current-buffer () (interactive) (kill-buffer (buffer-name)))

;;; key bindings

(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "C-x C-k") 'kill-current-buffer)
(global-set-key (kbd "C-x g") 'magit-status)


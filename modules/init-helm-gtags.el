;; Happy hacking binbzhu!

(require 'helm-gtags)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(setq
 helm-gtags-auto-update t
)
 ;; Set key bindings
(eval-after-load "helm-gtags"
  '(progn
    (define-key helm-gtags-mode-map (kbd "C-c .") 'helm-gtags-find-tag)
    (define-key helm-gtags-mode-map (kbd "C-c ,") 'helm-gtags-find-rtag)
    (define-key helm-gtags-mode-map (kbd "M-s") 'helm-gtags-find-symbol)
    (define-key helm-gtags-mode-map (kbd "M-g M-p") 'helm-gtags-parse-file)
    (define-key helm-gtags-mode-map (kbd "C-c [") 'helm-gtags-previous-history)
    (define-key helm-gtags-mode-map (kbd "C-c ]") 'helm-gtags-next-history)
    (define-key helm-gtags-mode-map (kbd "M-p") 'helm-gtags-pop-stack)
    (define-key helm-gtags-mode-map (kbd "C-c f") 'helm-gtags-find-files)
    (define-key helm-gtags-mode-map (kbd "C-c /") 'helm-gtags-dwim)))


(provide 'init-helm-gtags)

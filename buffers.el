;;
;; ~/.emacs.d/buffers.el
;;
;; Buffer-related customizations.
;;

;;----------------------------------------------------------------------
;; Keybindings
;;----------------------------------------------------------------------

;; Switch to buffer --- Control + Shift + Space.
;;
;; We will override this keybinding later to use helm for more
;; features. (This is done so that if external package loading (for
;; helm) fails for any reason, this keybinding will still work with
;; vanilla Emacs)
;;
(global-set-key (kbd "C-S-SPC") 'switch-to-buffer)

;; Previous buffer --- Control + Shift + j
(global-set-key (kbd "C-S-j") 'previous-buffer)

;; Next buffer --- Control + Shift + k
(global-set-key (kbd "C-S-k") 'next-buffer)


;;----------------------------------------------------------------------
;; Customizations
;;----------------------------------------------------------------------

;; Revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)
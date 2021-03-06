;;----------------------------------------------------------------------
;; Date shortcuts
;;----------------------------------------------------------------------

(defun date-label (&optional time)
  (format-time-string "%A, %B %-d, %Y" time))

(defun days-ago-time (days-ago)
  (time-subtract (current-time) (* days-ago 24 60 60)))

(defun today-date-label ()
  (date-label))

(defun yesterday-date-label ()
  (date-label (days-ago-time 1)))

;; (defun last-working-day-date-label ()
;;  (date-label
;;   (if (string= (format-time-string "%u") "1")
;;       (days-ago-time 3)
;;     (days-ago-time 1))))


(defun standup-yesterday-label ()
  (if (string= (format-time-string "%u") "1")
      (concat "**FRIDAY** " (format-time-string "(%B %-d, %Y)" (days-ago-time 3)))
    (concat "**YESTERDAY** (" (yesterday-date-label) ")")
    ))


(defun standup-today-label ()
  (concat "**TODAY** (" (today-date-label) ")"))

;; Yesterday date label
(global-set-key (kbd "<f9>")
                (lambda ()
                  "Insert the last working day’s date in the format: Sunday, January 1, 2018"
                  (interactive)
                  (insert (yesterday-date-label))))

;; Today’s date
(global-set-key (kbd "<f10>")
                (lambda ()
                  "Insert today’s date in the format: Sunday, January 1, 2018"
                  (interactive)
                  (insert (today-date-label))))


;; Standup: “Yesterday” label
(global-set-key (kbd "<S-f9>")
                (lambda ()
                  "Insert the last working day’s date in the format: Sunday, January 1, 2018"
                  (interactive)
                  (insert (standup-yesterday-label))))

;; Standup: Today label
(global-set-key (kbd "<S-f10>")
                (lambda ()
                  "Insert today’s date in the format: Sunday, January 1, 2018"
                  (interactive)
                  (insert (standup-today-label))))

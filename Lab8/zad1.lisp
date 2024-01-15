(defvar *lista-książek* '()) 
(defclass Książka ()
  ((tytuł :accessor Książka-tytuł)
   (autor :accessor Książka-autor)
   (wydawnictwo :accessor Książka-wydawnictwo)
   (rokWydania :accessor Książka-rokWydania)
   (ISBN :accessor Książka-ISBN)))


(defun dodajKsiążkę ()
    (let ((*książka* (make-instance 'Książka)))
        (print "Podaj tytuł książki: ")
        (force-output *query-io*)
        (setf (Książka-tytuł *książka*) (read *query-io*))

        (print "Podaj autora książki: ")
        (force-output *query-io*)
        (setf (Książka-autor *książka*) (read *query-io*))

        (print "Podaj wydawnictwo książki: ")
        (force-output *query-io*)
        (setf (Książka-wydawnictwo *książka*) (read *query-io*))

        (print "Podaj rok wydania książki: ")
        (force-output *query-io*)
        (setf (Książka-rokWydania *książka*) (read *query-io*))

        (print "Podaj ISBN książki: ")
        (force-output *query-io*)
        (setf (Książka-ISBN *książka*) (read *query-io*))
       
        (setq *lista-książek* (append *lista-książek* (list *książka*)))
    ))

(defun wypiszDetaleKsiążki (książka)
  (format t "Tytuł: ~a~%" (Książka-tytuł książka))
  (format t "Autor: ~a~%" (Książka-autor książka))
  (format t "Wydawnictwo: ~a~%" (Książka-wydawnictwo książka))
  (format t "rokWydania: ~a~%" (Książka-rokWydania książka))
  (format t "ISBN: ~a~%" (Książka-ISBN książka)))

(defun wyświetlListe ()
  (dolist (książka *lista-książek*)
    (format t "----------------------------~%")
    (wypiszDetaleKsiążki książka))

  (format t "----------------------------~%"))

(defun znajdźIndeksPoISBN (isbn)
  (let ((index nil))
    (dolist (książka *lista-książek* index)
      (when (equal (parse-integer isbn) (książka-ISBN książka))
        (setf index (position książka *lista-książek*))))))

(defun znajdź (isbn)
  (let ((found-book nil))
    (dolist (książka *lista-książek* found-book)
      (when (equal (parse-integer isbn) (książka-ISBN książka))
        (setf found-book książka)))))


(defun usunKsiążkę ()
  (let ((pom 0))
    (print "Podaj ISBN książki, którą chcesz usunąć: ")
    (force-output *query-io*)
    (setf pom (read *query-io*))
    
    (let ((indeks (znajdźIndeksPoISBN (format nil "~a" pom))))
      (if indeks
          (progn
            (setf *lista-książek* (delete (nth indeks *lista-książek*) *lista-książek*))
            (print "Książka usunięta."))
          (print "Książka o podanym ISBN nie została znaleziona."))))
  (values))

(defun wyświetlPoISBN ()
    (let ((pom 0))
        (print "Podaj ISBN książki, której dane chcesz wyświetlić: ")
        (force-output *query-io*)
        (setf pom (read *query-io*))
        (wypiszDetaleKsiążki (znajdź (format nil "~a" pom)))
    )
)

(dodajKsiążkę)
(dodajKsiążkę)
(usunKsiążkę)
(wyświetlListe)
(wyświetlPoISBN)
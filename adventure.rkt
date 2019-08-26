#lang adventure

;; Code contains multiple calls to (adventure-game) as a means to test them
;; before implementation into the main function call.

#;
(adventure-game
 #:avatar (basic-avatar
           #:sprite madscientist-sprite)
 #:intro-cutscene (basic-cutscene
                   (page
                    "A long time ago"
                    "In a place far, far, away...")
                   (page (set-sprite-scale
                          2
                          madscientist-sprite)
                         "There was a mad scientist"
                         "named Dr. Horrible.")))

(define (my-avatar)
  (basic-avatar
   #:sprite pirategirl-sprite
   #:speed 20
   #:health 100
   #:max-health 100))
(define (easy-enemy)
  (basic-enemy
   #:ai 'easy
   #:sprite slime-sprite
   #:amount-in-world 4))
(define (medium-enemy)
  (basic-enemy
   #:ai 'medium
   #:sprite bat-sprite
   #:amount-in-world 2))
(define (hard-enemy)
  (basic-enemy
   #:ai 'hard
   #:sprite snake-sprite
   #:night-only? #t))

#;
(adventure-game
 #:avatar (my-avatar))


(adventure-game      ;main
 #:avatar (my-avatar)
 #:intro-cutscene (basic-cutscene
                   (page
                    pirategirl-sprite
                    "You should not have come here..."
                    "Faithless Wanderer"
                    ""
                    "Your doom is now written"))
 #:enemy-list (list
               (curry
                basic-enemy
                #:ai 'hard
                #:amount-in-world 10
                #:night-only? #t
                #:health 200))
 #:npc-list (list
             (basic-npc
              #:dialog (list
                        "This land breathes out raggedly"
                        "It will kill you"
                        "Your blood will feed the earth"
                        "in perpetuum")))
 #:death-cutscene (basic-cutscene
                   (page
                    (set-sprite-angle
                     90
                     (render
                      pirategirl-sprite))
                    "You have been slain"
                    ""
                    "Your sacrifice must continue"))
 #:weapon-list (list
                (fireball)
                (spear)
                (sword)))

#;
(adventure-game
 #:avatar (my-avatar)
 #:enemy-list (list
              (easy-enemy)
              (medium-enemy)
              (hard-enemy))
 #:weapon-list (list
                (spear))
 #:death-cutscene (basic-cutscene
                   (page
                    (set-sprite-angle
                     90
                     (render
                      pirategirl-sprite))
                    "You died!")
                   (page
                    "Try Again")))



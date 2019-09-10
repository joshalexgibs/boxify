#lang racket
(require 3d-model/3d-model)

(display "define \"gary\". new-model!\n")

(define gary
  (new-model!
   "gary"))

(display "define \"harry\". add-mesh! \"harry\" '(2) '(4) '(3)\n")

(define harry
  (add-mesh!
   gary
   "harry"
   '(2)
   '(4)
   '(3)))

(display "mesh? harry\n")

(mesh? harry)

(display "get-mesh gary \"harry\"\n")

(get-mesh gary "harry")

(display "get-mesh-name harry\n")

(get-mesh-name harry)

(display "rename-mesh! harry \"Harry\"\n")

(rename-mesh! harry "Harry")

(display "get-mesh-name harry\n")

(get-mesh-name harry)

(display "defined \"mary\". add-mesh! gary \"mary\"\n")

(define mary
  (add-mesh!
   gary
   "mary"))

;(display "delete-mesh! of \"harry\"\n")

;(delete-mesh! gary harry)

;(display "get-mesh \"harry\"\n")

;(get-mesh gary "harry")

(display "commented out delete lines")

(display "join-meshes! gary harry mary (mary no longer in gary)\n")

(join-meshes!
 gary
 harry
 mary)

(display "get-mesh gary \"Harry\"\n")

(get-mesh gary "Harry")

(display "get-vertices harry\n")

(get-vertices harry)

(display "add-vertex! harry 5 3 4\n")

(add-vertex! harry 5 3 4)

(display "get-vertices harry\n")

(get-vertices harry)

(display "delete-vertex! harry '#(5 3 4)\n")

(delete-vertex! harry '#(5 3 4))

(display "get-vertices harry\n")

(get-vertices harry)

(display "get-polys harry\n")

(get-polys harry)
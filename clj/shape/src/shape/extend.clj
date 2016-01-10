(ns shape.extend
 (:require
          [shape.core :refer :all]
          [clojure.math.numeric-tower :as math])
 (:import (shape.core Square Circle)))

; new type
(defrecord Rect [h w]
  Shape
  (area [this]
    (* h w)))


; new method
(defprotocol IPerimeter
  (perimeter [this]))

(extend-protocol IPerimeter
  Square
  (perimeter [{:keys [side]}]
    (math/sqrt (+ (* side side) (* side side))))

  Circle
  (perimeter [{:keys [r]}]
    (* 2 r))

  Rect
  (perimeter [{:keys [h w]}]
    (math/sqrt (+ (* w h ) (* w h)))))

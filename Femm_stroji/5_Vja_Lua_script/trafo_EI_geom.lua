-------------------------------------------------
-- GEOMETRIJA ENOFAZNEGA TRANSFORMATORJA       --
-- IZDELANEGA NA "EI" JEDRU                    --
-------------------------------------------------
--    +----------------------------+
--   /                            /|
--  / b                          / |
-- +----------------------------+  |
-- |       a                    |  |
-- |    +----+        +----+    |  |
-- |    |    |        |    |    |  |
-- |    |    |        |    |3a  |  |
-- |    |    |        |    |    |  |
-- |  a |  a |   2a   |  a |  a |  +
-- +    +----+        +----+    + /
-- |                          a |/
-- +----------------------------+

---------------- VHODNI PODATKI -----------------
a = 25  -- dimenzija a (mm)
b = 2*a -- debelina jedra (mm)
-------------------------------------------------

-- definicija problema
mi_probdef(0,"millimeters","planar",1e-8,b)

-- izris geometrije jedra
mi_drawrectangle(-3*a,0,3*a,5*a)
mi_drawrectangle(-2*a,a,-a,4*a)
mi_drawrectangle(a,a,2*a,4*a)

-- delitev obeh oken na primar in sekundar
mi_drawline(-1.5*a,a,-1.5*a,4*a)
mi_drawline(1.5*a,a,1.5*a,4*a)

-- prikaz celotne geometrije
mi_zoomnatural()
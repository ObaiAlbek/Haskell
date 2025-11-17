# Haskell-Klausur 1 - Umfassende Prüfung

**Name:** ________________________  
**Matrikelnummer:** ________________________  
**Bearbeitungszeit:** 120 Minuten  
**Punkte:** 100

## Aufgabe 1: Theoretische Grundlagen (15 Punkte)

**a)** Erklären Sie die Konzepte "lazy evaluation" und "immutability" in Haskell und nennen Sie jeweils zwei Vor- und Nachteile.

**b)** Was ist der Unterschied zwischen `foldl`, `foldr` und `foldl'`? Geben Sie jeweils ein Anwendungsbeispiel.

**c)** Erklären Sie den Unterschied zwischen `Maybe` und `Either` und geben Sie jeweils ein typisches Anwendungsbeispiel.

## Aufgabe 2: Typinferenz und Typdeklarationen (10 Punkte)

**a)** Geben Sie den allgemeinsten Typ für folgende Funktionen an:
```haskell
f x y z = x (y z)
g = map (+1) . filter (>0)
```

**b)** Deklarieren Sie Typen für folgende Funktionen:
- Eine Funktion, die zwei Maybe-Werte mit einer Funktion kombiniert
- Eine Funktion, die eine Liste in eine Baumstruktur umwandelt

## Aufgabe 3: Funktionen implementieren (25 Punkte)

**a)** Implementieren Sie die Funktion `quicksort` für eine Liste von Integers.

**b)** Schreiben Sie eine Funktion `groupBy`, die eine Liste nach einem Kriterium gruppiert:
```haskell
groupBy :: (a -> a -> Bool) -> [a] -> [[a]]
```

**c)** Implementieren Sie die Fibonacci-Folge mit Memoization.

**d)** Schreiben Sie eine Funktion `parseCSV`, die einen String in eine Liste von Listen zerlegt.

## Aufgabe 4: Higher-Order Functions (15 Punkte)

**a)** Implementieren Sie `map`, `filter` und `foldr` selbst.

**b)** Verwenden Sie Higher-Order Functions, um folgendes Problem zu lösen:
"Finde die Summe aller geraden Quadratzahlen einer Liste"

**c)** Schreiben Sie eine Funktion `composeList`, die eine Liste von Funktionen zu einer Funktion komponiert.

## Aufgabe 5: Datentypen und Pattern Matching (20 Punkte)

**a)** Definieren Sie einen algebraischen Datentyp für einen Binärbaum:
```haskell
data Tree a = ...
```

**b)** Implementieren Sie folgende Funktionen für den Baum:
- `insert :: Ord a => a -> Tree a -> Tree a`
- `depth :: Tree a -> Int`
- `inorder :: Tree a -> [a]`

**c)** Definieren Sie einen Typ für arithmetische Ausdrücke:
```haskell
data Expr = ...
```
und schreiben Sie eine Auswertungsfunktion `eval :: Expr -> Int`

## Aufgabe 6: Monaden und IO (15 Punkte)

**a)** Erklären Sie das Konzept der Monade am Beispiel von `Maybe` und `IO`.

**b)** Schreiben Sie ein Programm, das eine Datei einliest und:
- Die Anzahl der Wörter zählt
- Die längsten 5 Wörter ausgibt
- Fehlerbehandlung für nicht-existierende Dateien implementiert

**c)** Implementieren Sie eine Funktion mit State-Monade, die einen Zähler verwaltet:
```haskell
counter :: State Int Int
```

## Aufgabe 7: Typklassen (10 Punkte)

**a)** Machen Sie Ihren Baum-Typ aus Aufgabe 5 eine Instanz von:
- `Functor`
- `Foldable`

**b)** Erklären Sie die Typklassen `Monoid` und `Applicative` mit je einem Beispiel.

**c)** Implementieren Sie eine `Monoid`-Instanz für Ihre `Expr`-Klasse.

## Aufgabe 8: Fortgeschrittene Konzepte (10 Punkte)

**a)** Schreiben Sie eine Funktion mit Lenses für Record-Updates.

**b)** Erklären Sie den Unterschied zwischen `data` und `newtype`.

**c)** Implementieren Sie eine einfache Version von `parMap` für Parallelverarbeitung.

## Aufgabe 9: Code-Analyse (10 Punkte)

Analysieren Sie folgenden Code:
```haskell
mystery :: [Int] -> [Int]
mystery = foldr (\x xs -> xs ++ [x]) []

weird :: Int -> [Int] -> [Int]
weird n = concatMap (replicate n)
```

**a)** Was machen diese Funktionen?
**b)** Identifizieren Sie Performance-Probleme und verbessern Sie den Code.
**c)** Geben Sie die Zeitkomplexität an.

## Aufgabe 10: Praktische Anwendung (10 Punkte)

Entwerfen Sie ein Modul für einen einfachen Taschenrechner, der:
- Grundrechenarten unterstützt
- Klammerausdrücke verarbeitet
- Fehlerbehandlung enthält
- Erweiterbar für neue Operationen ist

---

# Haskell-Klausur 2 - Standardprüfung

**Name:** ________________________  
**Matrikelnummer:** ________________________  
**Bearbeitungszeit:** 90 Minuten  
**Punkte:** 60

## Aufgabe 1: Grundlagen (8 Punkte)

**a)** Welche der folgenden Ausdrücke sind in Haskell gültig? Begründen Sie kurz.
```haskell
1. let x = 5 in x + 1
2. if True then 1 else "2"
3. \x -> x * 2
4. 1 + 2.0
```

**b)** Geben Sie den Typ und den Wert der folgenden Ausdrücke an:
```haskell
1. map (\x -> x + 1) [1,2,3]
2. filter (>2) [1,2,3,4]
3. foldr (+) 0 [1,2,3]
4. takeWhile (<3) [1,2,3,4]
```

## Aufgabe 2: Funktionen implementieren (12 Punkte)

**a)** Implementieren Sie die Fakultätsfunktion rekursiv:
```haskell
fac :: Integer -> Integer
```

**b)** Schreiben Sie eine Funktion, die prüft ob eine Liste sortiert ist:
```haskell
isSorted :: Ord a => [a] -> Bool
```

**c)** Implementieren Sie die Funktion `zipWith`:
```haskell
myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
```

**d)** Schreiben Sie eine Funktion, die alle Teillisten einer Liste findet:
```haskell
sublists :: [a] -> [[a]]
```

## Aufgabe 3: Datentypen (10 Punkte)

**a)** Definieren Sie einen Datentyp für eine einfache Arithmetik:
```haskell
data Expr = ...
  deriving (Show)
```
der Zahlen, Addition, Subtraktion und Multiplikation unterstützt.

**b)** Implementieren Sie eine Auswertungsfunktion:
```haskell
eval :: Expr -> Int
```

**c)** Schreiben Sie eine Funktion zur Vereinfachung von Ausdrücken:
```haskell
simplify :: Expr -> Expr
```
die z.B. `Add (Num 0) x` zu `x` vereinfacht.

## Aufgabe 4: Listenverarbeitung (8 Punkte)

**a)** Schreiben Sie mit Listenkomprehension eine Funktion, die alle Primzahlen bis n findet:
```haskell
primes :: Int -> [Int]
```

**b)** Implementieren Sie eine Funktion, die eine Liste in Teillisten fester Länge aufteilt:
```haskell
chunks :: Int -> [a] -> [[a]]
```

**c)** Schreiben Sie `groupBy` ohne `Data.List` zu verwenden:
```haskell
myGroupBy :: (a -> a -> Bool) -> [a] -> [[a]]
```

## Aufgabe 5: Typklassen und Monaden (12 Punkte)

**a)** Machen Sie `Expr` eine Instanz von `Eq`:
```haskell
instance Eq Expr where
```

**b)** Implementieren Sie den `Maybe`-Monad für eine Division mit Fehlerbehandlung:
```haskell
safeDiv :: Int -> Int -> Maybe Int
```

**c)** Schreiben Sie eine IO-Funktion, die den Benutzer nach Zahlen fragt bis 0 eingegeben wird und dann die Summe ausgibt:
```haskell
sumNumbers :: IO ()
```

## Aufgabe 6: Algorithmen (10 Punkte)

**a)** Implementieren Sie den Euklidischen Algorithmus für ggT:
```haskell
gcd' :: Int -> Int -> Int
```

**b)** Schreiben Sie eine Funktion, die die n-te Fibonacci-Zahl berechnet (effizient):
```haskell
fib :: Int -> Integer
```

**c)** Implementieren Sie Merge-Sort:
```haskell
mergeSort :: Ord a => [a] -> [a]
```

## Aufgabe 7: Code-Verständnis (10 Punkte)

Analysieren Sie folgenden Code:

```haskell
mystery1 = foldl (flip (:)) []
mystery2 xs = [y | x <- xs, y <- replicate x x]

data Tree a = Leaf a | Node (Tree a) (Tree a)
  deriving Show

depth :: Tree a -> Int
depth (Leaf _) = 1
depth (Node l r) = 1 + max (depth l) (depth r)
```

**a)** Was machen `mystery1` und `mystery2`?
**b)** Wie viele Blätter hat `Node (Leaf 1) (Node (Leaf 2) (Leaf 3))`?
**c)** Schreiben Sie eine Funktion `leaves`, die alle Blätter eines Baums sammelt.

## Aufgabe 8: Erweiterung (10 Punkte)

Erweitern Sie den `Expr`-Datentyp um:
- Boolesche Ausdrücke (`And`, `Or`, `Not`)
- Vergleichsoperationen (`Equals`, `LessThan`)
- If-Then-Else Ausdrücke

Passen Sie die `eval`-Funktion entsprechend an, sodass sie jetzt `Either String Int` zurückgibt.

---

# Haskell-Klausur 3 - Fortgeschrittene Konzepte

**Name:** ________________________  
**Bearbeitungszeit:** 120 Minuten  
**Punkte:** 80

## Aufgabe 1: Typsystem (12 Punkte)

**a)** Geben Sie den allgemeinsten Typ an:
```haskell
1. \f g x -> f (g x)
2. foldr (.) id
3. traverse (\x -> [x, x+1])
```

**b)** Implementieren Sie eine Funktion mit expliziter Typannotation für:
"Eine Funktion, die eine Liste von Maybe-Werten in einen Maybe-Wert einer Liste verwandelt"

**c)** Erklären Sie den Unterschied zwischen `rank-1` und `rank-2` Polymorphie.

## Aufgabe 2: Monadentransformer (15 Punkte)

**a)** Implementieren Sie einen einfachen Parser mit State und Error-Handling:
```haskell
newtype Parser a = Parser (String -> Either String (a, String))
```

**b)** Machen Sie `Parser` eine Instanz von `Monad`, `Applicative` und `Functor`.

**c)** Schreiben Sie Parser für:
- Einen bestimmten Charakter
- Eine Ziffer
- Eine natürliche Zahl

## Aufgabe 3: Lazy Evaluation (10 Punkte)

**a)** Schreiben Sie eine unendliche Liste aller Primzahlen.

**b)** Implementieren Sie den Sieb des Eratosthenes.

**c)** Erklären Sie, warum folgender Code terminiert:
```haskell
take 5 (filter (<10) [1..])
```

## Aufgabe 4: Fortgeschrittene Datentypen (18 Punkte)

**a)** Definieren Sie einen Rose-Tree:
```haskell
data RoseTree a = ...
```

**b)** Implementieren Sie:
- `Functor`- und `Foldable`-Instanzen
- Eine Funktion zur Berechnung der Tiefe
- Pre-order und Post-order Traversierung

**c)** Schreiben Sie eine Zipper-Implementation für den Rose-Tree.

## Aufgabe 5: Concurrency (10 Punkte)

**a)** Schreiben Sie ein Programm mit `async`, das mehrere HTTP-Requests parallel ausführt.

**b)** Implementieren Sie einen einfachen Channel mit `MVar`.

**c)** Erklären Sie den Unterschied zwischen `MVar` und `TVar`.

## Aufgabe 6: Property-based Testing (15 Punkte)

**a)** Schreiben Sie QuickCheck-Properties für:
- Die Reverse-Funktion
- Die Assoziativität der Addition
- Die Distributivität über Listenoperationen

**b)** Definieren Sie einen Generator für Ihren `Expr`-Datentyp.

**c)** Schreiben Sie eine Test-Suite für Ihre Parser-Implementation.

---


# Haskell-Klausur - Funktionale Programmierung

**Name:** ________________________  
**Matrikelnummer:** ________________  
**Bearbeitungszeit:** 120 Minuten  
**Punkte:** 100  

---

## Aufgabe 1: Typinferenz (15 Punkte)

Gib die allgemeinsten Typen für folgende Funktionen an (ohne :t in GHCI zu verwenden!):

```haskell
a) f x y = [x, y]
-- Typ: _________________________

b) g h x = h (h x)
-- Typ: _________________________

c) comp f g x = f (g x)
-- Typ: _________________________

d) mystery xs = foldr (++) [] (map (:[]) xs)
-- Typ: _________________________

e) z f x = if f x then x else f x
-- Typ: _________________________
```

## Aufgabe 2: Rekursion und Higher-Order Functions (20 Punkte)

a) Implementiere die Funktion `map` selbst mit Rekursion:
```haskell
myMap :: (a -> b) -> [a] -> [b]
myMap f [] = ____________________
myMap f (x:xs) = ____________________
```

b) Implementiere `filter` mit `foldr`:
```haskell
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p = foldr ____________________ ____________________
```

c) Schreibe eine Funktion `countIf`, die zählt, wie viele Elemente einer Liste eine Bedingung erfüllen:
```haskell
countIf :: (a -> Bool) -> [a] -> Int
countIf p = ____________________
```

## Aufgabe 3: Listenverarbeitung (15 Punkte)

a) Schreibe eine Funktion `pairs`, die alle möglichen Paare aus einer Liste erzeugt:
```haskell
-- pairs [1,2,3] == [(1,2),(1,3),(2,3)]
pairs :: [a] -> [(a, a)]
pairs xs = ____________________
```

b) Implementiere `quicksort`:
```haskell
quicksort :: Ord a => [a] -> [a]
quicksort [] = ____________________
quicksort (x:xs) = 
    let smaller = ____________________
        bigger = ____________________
    in ____________________
```

## Aufgabe 4: Algebraische Datentypen (20 Punkte)

a) Definiere einen Binärbaum-Datentyp:
```haskell
data Tree a = ____________________ | ____________________
    deriving (Show, Eq)
```

b) Schreibe eine Funktion, die die Tiefe eines Baums berechnet:
```haskell
depth :: Tree a -> Int
depth Empty = ____________________
depth (Node _ left right) = ____________________
```

c) Implementiere `map` für Bäume:
```haskell
treeMap :: (a -> b) -> Tree a -> Tree b
treeMap f Empty = ____________________
treeMap f (Node x left right) = ____________________
```

## Aufgabe 5: Typklassen (15 Punkte)

a) Mache den Point-Datentyp eine Instanz von `Eq` und `Show`:
```haskell
data Point = Point Int Int

instance Eq Point where
    (Point x1 y1) == (Point x2 y2) = ____________________

instance Show Point where
    show (Point x y) = ____________________
```

b) Definiere eine Typklasse `Area` mit Methode `area` und mache Point (als Rechteck interpretiert) zu einer Instanz:
```haskell
class Area a where
    area :: a -> Double

instance Area Point where
    area (Point x y) = ____________________
```

## Aufgabe 6: Monaden und IO (15 Punkte)

a) Schreibe ein Programm, das den Benutzer nach Zahlen fragt bis 0 eingegeben wird, und dann die Summe ausgibt:
```haskell
sumNumbers :: IO ()
sumNumbers = do
    putStrLn "Gib Zahlen ein (0 zum Beenden):"
    let loop acc = do
            input <-____________
            let n = read input :: Int
            if n == 0 
                then _______________
            else ____________________
    loop 0
```

b) Was gibt folgendes Programm aus? Erkläre warum!
```haskell
main = do
    x <- return 42
    y <- return (x * 2)
    putStrLn $ show y
```

Sehr gut 💪 — du willst das also als **README-kompatible Markdown-Datei** (perfekt für GitHub oder VS Code).
Ich baue dir das **komplett ordentlich formatiert**,
mit allen **Haskell-Klausuraufgaben** und **allen Übungsaufgaben zu Monaden**,
die du in diesem Chat hattest — in **Markdown-Syntax** (`.md`).

Hier ist dein vollständiger Inhalt für `README.md` 👇

---

````markdown
# 🧠 Haskell Klausur- und Übungsaufgaben

Dieses Dokument enthält:
1. Eine vollständige **simulierte Haskell-Klausur** (90 Minuten)
2. Alle **Übungsaufgaben zu Monaden** (von leicht bis schwer)

Ziel: Wenn du diese Aufgaben sicher beherrschst,  
bestehst du jede reale Haskell-Klausur **mit 100 % Sicherheit** ✅

---

## 🧾 💣 HASKELL-KLAUSUR (90 Minuten, ohne Hilfsmittel)

### 📘 Themen:
- Rekursion & Pattern Matching  
- Higher-Order Functions  
- Typklassen (Functor, Applicative, Monad)  
- Algebraische Datentypen  
- IO & do-Notation  
- Monaden (Maybe, Either, List, IO)  
- Listenfunktionen  
- Eigene Typinstanzen

---

## **Teil A: Grundlagen (Kurzantworten, 15 Punkte)**

**1.** (2P) Was ist der Unterschied zwischen einer Funktion und einem Wert in Haskell? Gib ein Beispiel.

**2.** (2P) Was macht Pattern Matching und warum ist es besser als if-Abfragen bei Listen?

**3.** (3P) Erkläre den Unterschied zwischen `map`, `filter` und `foldr` in je einem Satz.

**4.** (3P) Was bedeutet der Typ `Maybe Int` und wozu wird er verwendet?

**5.** (5P) Ergänze die Typen:

| Ausdruck | Typ |
|-----------|------|
| `map` | ? |
| `(>>=)` | ? |
| `return` | ? |
| `fmap` | ? |
| `sequence` | ? |

---

## **Teil B: Rekursion & Funktionen (25 Punkte)**

**6.** (5P) Implementiere eine Funktion  
```haskell
sumList :: [Int] -> Int
````

die die Summe einer Liste berechnet, **ohne `sum`** zu verwenden.

---

**7.** (5P) Implementiere eine Funktion

```haskell
countEven :: [Int] -> Int
```

die alle geraden Zahlen in einer Liste zählt (nur rekursiv, kein `filter`).

---

**8.** (5P) Implementiere

```haskell
flatten :: [[a]] -> [a]
```

die eine Liste von Listen „flach“ macht
(z. B. `flatten [[1,2],[3],[4,5]] = [1,2,3,4,5]`).

---

**9.** (5P) Implementiere eine rekursive Funktion

```haskell
reverseList :: [a] -> [a]
```

ohne `reverse` aus dem Prelude.

---

**10.** (5P) Implementiere eine Funktion

```haskell
insertionSort :: (Ord a) => [a] -> [a]
```

(du darfst deine eigene `sortiere`-Funktion wiederverwenden).

---

## **Teil C: Eigene Typen und Typklassen (20 Punkte)**

**11.** (5P) Definiere einen algebraischen Datentyp `Shape`, der `Circle r`, `Rectangle w h` und `Square a` darstellen kann.

Schreibe eine Funktion:

```haskell
area :: Shape -> Float
```

die die Fläche berechnet.

---

**12.** (5P) Definiere einen eigenen Datentyp

```haskell
data Box a = Box a
```

und implementiere dafür `Functor` und `Monad` Instanzen.

---

**13.** (5P) Erkläre in Worten:

> Was bedeuten die drei Monadgesetze (Linksidentität, Rechtsidentität, Assoziativität)?

---

**14.** (5P) Zeige mit einem Beispiel, dass

```haskell
m1 >> m2 == m1 >>= const m2
```

gilt, und erkläre in 1–2 Sätzen warum.

---

## **Teil D: Monaden & IO (30 Punkte)**

**15.** (10P) Implementiere eine kleine IO-Anwendung:

```haskell
main :: IO ()
```

* Lies eine Zahl ein (`getLine` → `read`)
* Berechne ihre Verdopplung
* Gib sie wieder aus
* Wenn Eingabe „0“, dann beende das Programm

👉 **ohne `do`**, nur mit `(>>=)` und `return`.

---

**16.** (10P) Implementiere dieselbe Funktion **mit `do`-Notation**
und erkläre kurz den Unterschied in der Lesbarkeit.

---

**17.** (10P) Implementiere eine Funktion mit der `Maybe`-Monade:

```haskell
safeCalc :: Float -> Maybe Float
```

* Ziehe die Wurzel
* Berechne den Kehrwert
* Verdopple das Ergebnis

Wenn eine Operation nicht definiert ist (z. B. Wurzel von negativ),
soll `Nothing` zurückgegeben werden.
Verwende **do-Notation**.

---

## **Teil E: Bonus / Schwer (10 Punkte)**

**18.** (5P) Implementiere `sequenceMaybe :: [Maybe a] -> Maybe [a]`
ohne die Prelude-Version, also **manuell** mit `(>>=)` oder `do`.

---

**19.** (5P) Implementiere `mapM' :: (a -> IO b) -> [a] -> IO [b]`
(also wie `mapM`, aber selbst geschrieben).


Perfekt 💪 — hier ist deine komplette **zweite Klausur („Programmierung 3 – Haskell“) in Markdown-Syntax**,
direkt bereit für dein `README.md` (z. B. für GitHub oder VS Code).

Ich habe alles **übersichtlich formatiert**, mit Codeblöcken und klaren Überschriften.

---
# 🧮 **Klausur: Programmierung 3 – Haskell**


## 🧠 **Teil 1: Theorie (40 Punkte)**


### **Aufgabe 1: Grundlagen (8 Punkte)**

Erklären Sie in eigenen Worten:

1. Was bedeutet *Reinheit* (Purity) in Haskell?  
2. Was ist der Unterschied zwischen *Lazy Evaluation* und *Eager Evaluation*?  
3. Was sind *Typklassen* (type classes) in Haskell und wozu dienen sie?  
4. Warum gilt Haskell als „funktional und deklarativ“?

---

### **Aufgabe 2: Typen und Typklassen (10 Punkte)**

Gegeben ist folgender Code:

```haskell
f :: (Eq a, Num a) => a -> a -> Bool
f x y = (x * 2) == (y + 3)
````

1. Erklären Sie die Bedeutung der Signatur `(Eq a, Num a) => a -> a -> Bool`.
2. Was passiert, wenn man `f "abc" 5` aufruft? Begründen Sie.
3. Warum benötigt Haskell die Typklasse `Eq` in dieser Funktion?

---

### **Aufgabe 3: Rekursion & Mustervergleich (8 Punkte)**

Erklären Sie anhand eines Beispiels:

1. Was ist *Pattern Matching* in Haskell?
2. Warum wird in Haskell Rekursion anstelle von Schleifen verwendet?
3. Was ist *Tail Recursion* und warum ist sie wichtig?

---

### **Aufgabe 4: Higher-Order Functions (8 Punkte)**

Beantworten Sie kurz:

1. Was sind *Higher-Order Functions*?
2. Nennen Sie drei typische Beispiele solcher Funktionen in Haskell.
3. Beschreiben Sie den Unterschied zwischen `map`, `filter` und `foldr`.

---

### **Aufgabe 5: Monaden (6 Punkte)**

1. Erklären Sie, was eine *Monad* ist.
2. Warum sind Monaden in Haskell notwendig?
3. Nennen Sie zwei Beispiele für Monaden und ihren Zweck.

---

## 💻 **Teil 2: Praxis (60 Punkte)**

---

### **Aufgabe 6: Rekursive Funktionen (12 Punkte)**

Implementieren Sie eine rekursive Funktion `myReverse`, die eine Liste umkehrt.

```haskell
myReverse :: [a] -> [a]
-- Beispiel: myReverse [1,2,3] -> [3,2,1]
```

> Bonus: Implementieren Sie eine zweite Variante mit einem *Accumulator* (Tail Recursion).

---

### **Aufgabe 7: Typklassen & eigene Datentypen (12 Punkte)**

Definieren Sie einen eigenen Datentyp `Shape`, der `Circle` (mit Radius)
und `Rectangle` (mit Breite und Höhe) enthält.
Implementieren Sie eine Funktion `area`, die die Fläche berechnet.

```haskell
data Shape = Circle Float | Rectangle Float Float
area :: Shape -> Float
```

**Beispiele:**

```
area (Circle 5)       -> 78.53982
area (Rectangle 4 6)  -> 24.0
```

---

### **Aufgabe 8: Higher-Order Functions (10 Punkte)**

Gegeben ist:

```haskell
nums = [1..10]
```

Schreiben Sie Haskell-Ausdrücke für:

1. Alle geraden Zahlen aus `nums`.
2. Das Quadrat jeder Zahl aus `nums`.
3. Das Produkt aller Zahlen in `nums`.
4. Dasselbe mit `foldl` statt einer Schleife.

---

### **Aufgabe 9: Maybe und Fehlerbehandlung (10 Punkte)**

Schreiben Sie eine Funktion, die eine Division durchführt,
aber `Nothing` zurückgibt, wenn durch 0 geteilt wird:

```haskell
safeDiv :: Float -> Float -> Maybe Float
```

**Beispiele:**

```
safeDiv 10 2 -> Just 5.0
safeDiv 8 0  -> Nothing
```

---

### **Aufgabe 10: IO und Monaden (16 Punkte)**

Schreiben Sie ein vollständiges Haskell-Programm, das:

1. Den Benutzer nach zwei Zahlen fragt,
2. deren Summe berechnet,
3. das Ergebnis ausgibt.

**Beispielausgabe:**

```
Gib die erste Zahl ein: 4
Gib die zweite Zahl ein: 7
Die Summe ist: 11
```

Verwenden Sie die `do`-Notation und `read` zum Einlesen.


Natürlich ✅ — hier ist deine komplette **„Programmierung 3 – Haskell (Version 2)“-Klausur**
in **Markdown-Syntax** (perfekt für dein `README.md`).

---
# 🧮 **Klausur: Programmierung 3 – Haskell (Version 2)**

## 🧠 **Teil 1: Theorie (40 Punkte)**

### **Aufgabe 1 – Funktionales Denken (10 Punkte)**

Beantworten Sie kurz:

1. Was ist *Referentielle Transparenz*?  
2. Was bedeutet es, dass Haskell *Lazy Evaluated* ist?  
3. Warum gibt es in Haskell keine Variablen im klassischen Sinn?  
4. Welche Vorteile hat die *Unveränderlichkeit* (Immutability) von Daten?  
5. Was versteht man unter einer *reinen Funktion* (pure function)?

---

### **Aufgabe 2 – Typen und Polymorphie (8 Punkte)**

Gegeben ist:

```haskell
mystery :: (a -> a) -> [a] -> [a]
mystery f xs = map f (reverse xs)
````

1. Erklären Sie die Typdeklaration.
2. Welche Typen kann `a` haben?
3. Was liefert `mystery (*2) [1,2,3]` zurück?
4. Ist `mystery` eine *Higher-Order Function*? Begründen Sie.

---

### **Aufgabe 3 – Lambda-Ausdrücke (8 Punkte)**

1. Was ist ein *Lambda-Ausdruck* in Haskell?
2. Wie lautet der Lambda-Ausdruck, der eine Zahl verdoppelt?
3. Schreiben Sie den Ausdruck `map (+1) [1,2,3]` als Lambda-Version.
4. Erklären Sie kurz, warum Lambdas in Haskell wichtig sind.

---

### **Aufgabe 4 – List Comprehensions (8 Punkte)**

1. Was sind *List Comprehensions* in Haskell?
2. Geben Sie eine List Comprehension an, die alle Quadratzahlen von 1 bis 10 liefert.
3. Schreiben Sie eine, die alle geraden Zahlen kleiner 20 ausgibt, die durch 3 teilbar sind.
4. Wie unterscheiden sich List Comprehensions von `map` und `filter`?

---

### **Aufgabe 5 – Monaden und IO (6 Punkte)**

1. Was ist eine *IO-Aktion* in Haskell?
2. Warum sind Monaden notwendig, um Seiteneffekte zu behandeln?
3. Erklären Sie kurz die Bedeutung der `do`-Notation.

---

## 💻 **Teil 2: Praxis (60 Punkte)**

---

### **Aufgabe 6 – Rekursion: Fakultät (10 Punkte)**

Implementieren Sie eine Funktion, die die Fakultät berechnet.

```haskell
factorial :: Integer -> Integer
-- Beispiel: factorial 5 -> 120
```

> Bonus: Schreiben Sie auch eine Variante mit `product` und List Comprehension.

---

### **Aufgabe 7 – List Comprehensions (10 Punkte)**

Definieren Sie eine Funktion, die alle Paare `(x,y)` für `x,y` aus `[1..10]` liefert,
bei denen `x < y` und `(x + y)` gerade ist.

```haskell
evenPairs :: [(Int,Int)]
-- Beispiel: [(1,3),(1,5),(2,4),(2,6),...]
```

---

### **Aufgabe 8 – Eigene Datentypen (12 Punkte)**

Definieren Sie einen Datentyp für ein einfaches Binärbaum-Modell und
eine Funktion, die die Summe aller Werte berechnet.

```haskell
data Tree = Leaf Int | Node Tree Int Tree
sumTree :: Tree -> Int
```

**Beispiel:**

```haskell
sumTree (Node (Leaf 1) 5 (Node (Leaf 2) 3 (Leaf 4))) -> 15
```

---

### **Aufgabe 9 – Higher-Order Function (12 Punkte)**

Schreiben Sie eine Funktion `applyNTimes`, die eine Funktion `f` n-mal
auf ein Argument anwendet.

```haskell
applyNTimes :: Int -> (a -> a) -> a -> a
-- Beispiel: applyNTimes 3 (+1) 0 -> 3
-- Beispiel: applyNTimes 2 (++"!") "Hi" -> "Hi!!"
```

---

### **Aufgabe 10 – Monaden & IO (16 Punkte)**

Schreiben Sie ein Haskell-Programm, das:

1. Eine Zahl `n` einliest,
2. Eine Liste von 1 bis n erzeugt,
3. Nur die ungeraden Zahlen herausfiltert,
4. Die Summe dieser Zahlen ausgibt.

**Beispiel:**

```
Gib eine Zahl ein: 7
Summe der ungeraden Zahlen: 16
```

Verwenden Sie `read`, `filter`, `sum`, und `do`-Notation.

---

Natürlich ✅ — hier ist deine komplette **Probeklausur: Funktionale Programmierung (Haskell)**
in **Markdown-Syntax**, perfekt für dein `README.md`.

---
# 🧮 **Probeklausur: Funktionale Programmierung (Haskell)**

**Bearbeitungszeit:** 90 Minuten  
**Gesamtpunkte:** 100  

---

## 🧠 **1. Konzepte & Theorie (20 Punkte)**

Beantworte die folgenden Fragen kurz und präzise.

1. **(4 Pkt)** Was ist *Referenzielle Transparenz* (Referential Transparency) und warum ist sie für die funktionale Programmierung von zentraler Bedeutung?  
2. **(4 Pkt)** Nenne den fundamentalen Unterschied zwischen `data` und `type`. Gib für beide ein kurzes Beispiel.  
3. **(4 Pkt)** Erkläre den Unterschied zwischen `foldl` und `foldr`. Welche(r) von beiden kann (unter Umständen) mit unendlichen Listen arbeiten und warum?  
4. **(4 Pkt)** Erkläre den Unterschied zwischen dem `.` (Punkt) und dem `$` (Dollar) Operator. Wann würdest du welchen verwenden?  
5. **(4 Pkt)** Was ist das "Problem", das die `Maybe`-Monade löst? Was ist das "Problem", das die `IO`-Monade löst?

---

## 🧩 **2. Typsignaturen (15 Punkte)**

Leite die allgemeinstmögliche Typsignatur für die folgenden Funktionen her.  
*(Du musst die Funktion nicht implementieren.)*

1. **(5 Pkt)**  
   ```haskell
   funktionA f x y = f y (x, y)
    ````

2. **(5 Pkt)**

   ```haskell
   funktionB x = (x > 10) && (length x > 5)
   ```

   *(Tipp: `x` muss zwei verschiedene Typklassen erfüllen!)*

3. **(5 Pkt)**

   ```haskell
   funktionC f g x = f (g x) (g x)
   ```

---

## 🔍 **3. Code-Verständnis (15 Punkte)**

1. **(5 Pkt)** Was tut die folgende Funktion? Gib ihr einen besseren Namen.

   ```haskell
   mystery :: (a -> Bool) -> [a] -> [a]
   mystery _ [] = []
   mystery p (x:xs)
       | p x       = x : mystery p xs
       | otherwise = mystery p xs
   ```

2. **(10 Pkt)** Verfolge (trace) die Auswertung des folgenden Ausdrucks Schritt für Schritt.
   Was ist das Endergebnis?

   ```haskell
   let f = map (+2) . filter odd
   in f [1, 2, 3, 4, 5]
   ```

   *(Tipp: `odd` gibt `True` für ungerade Zahlen zurück.)*

---

## 💻 **4. Programmieraufgaben (Mittel) (30 Punkte)**

1. **(10 Pkt) `zip` neu implementieren:**
   Implementiere die Funktion

   ```haskell
   myZip :: [a] -> [b] -> [(a, b)]
   ```

   Sie soll zwei Listen nehmen und sie zu einer Liste von Paaren "verzahnen".
   Die resultierende Liste soll so lang sein wie die *kürzere* der beiden Eingabelisten.
   Beispiel:

   ```haskell
   myZip [1, 2] ['a', 'b', 'c'] -> [(1, 'a'), (2, 'b')]
   ```

   *(Hinweis: Die Kombinatorik beschäftigt sich damit, wie viele verschiedene Anordnungen oder Auswahlen es gibt, z. B. bei der Bildung von Paaren.)*

---

2. **(20 Pkt) Lauflängenkodierung (Run-Length Encoding):**
   Schreibe eine Funktion

   ```haskell
   encode :: (Eq a) => [a] -> [(Int, a)]
   ```

   Diese Funktion soll aufeinanderfolgende Duplikate in einer Liste zählen und als Tupel `(Anzahl, Element)` zusammenfassen.
   Beispiel:

   ```haskell
   encode "aaaabccaadeeee" -> [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
   ```

   *(Tipp: Diese Aufgabe lässt sich am besten mit einer **Hilfsfunktion (aux)** lösen, die einen Akkumulator verwendet, um den aktuellen Zählwert mitzuführen.)*

---

## 🌳 **5. Programmieraufgaben (Schwer) (20 Punkte)**

1. **(10 Pkt) Bäume abbilden:**
   Gegeben ist der folgende Datentyp für einen binären Baum:

   ```haskell
   data Tree a = Empty | Node (Tree a) a (Tree a)
   ```

   Schreibe eine Funktion

   ```haskell
   mapTree :: (a -> b) -> Tree a -> Tree b
   ```

   Diese Funktion soll eine Funktion `(a -> b)` auf *jeden* Wert `a` im Baum anwenden und einen neuen Baum mit den resultierenden `b`-Werten zurückgeben, wobei die Struktur des Baumes erhalten bleibt.

---

2. **(10 Pkt) Monaden (Die Kette):**
   Gegeben sind die beiden sicheren Funktionen:

   ```haskell
   safeHead :: [a] -> Maybe a
   safeHead []    = Nothing
   safeHead (x:_) = Just x

   safeTail :: [a] -> Maybe [a]
   safeTail []     = Nothing
   safeTail (_:xs) = Just xs
   ```

   Schreibe eine Funktion

   ```haskell
   safeSecond :: [a] -> Maybe a
   ```

   die das *zweite* Element einer Liste sicher zurückgibt.
   Du **musst** `safeHead` und `safeTail` verwenden.
   Die Funktion soll `Nothing` zurückgeben, wenn die Liste weniger als zwei Elemente hat.

   *(Tipp: Du musst die Aktionen verketten. Verwende entweder den `>>=` (Bind)-Operator oder einen `do`-Block.)*

---
## Weiter Fragen
- was wäre dann wenn die Sprache pure aber nicht Lazy
- was wird das aussehen
    * f.g 
    * f :: x -> y
    * g :: z -> x
    * f.g :: ???
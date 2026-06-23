# 6. Billeder og illustration

## Fotostil

**Princip** — Alle fotografier følger én defineret stemning, farvepalet og motivtilgang.

**Begrundelse** — Inkonsekvent fotostil er den hurtigste vej til et amatøragtigt udtryk — ét klart fotosprog binder brandets visuelle identitet sammen.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Farvesignatur | [Indsæt: fx varm og naturlig / kølig og neutral] |
| Lysopsætning | [Indsæt: fx naturligt lys / studiolys] |
| Perspektiv | [Indsæt: fx øjenhøjde / fugleperspektiv] |
| Motiv-fokus | [Indsæt: fx mennesker i aktion / produkter i kontekst] |
| Bearbejdning | [Indsæt: fx minimal retusche / konsekvent preset] |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
/* Billeder altid med object-fit og aspektforhold-token */
--aspect-ratio-hero: 16 / 9;
--aspect-ratio-card: 4 / 3;
--aspect-ratio-portrait: 3 / 4;
```

---

## Illustrationssprog

**Princip** — Illustrationer følger én konsekvent stil og bruges til at kommunikere koncepter der er svære at fotografere.

**Begrundelse** — Illustrationer er et kraftfuldt differentierende element — kun hvis de er konsekvente i stil og farver.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Stil | [Indsæt: fx flade ikoner / håndtegnede linjer / 3D render] |
| Farvepalette | Bundet til brandets primær- og sekundærpalette |
| Streg | [Indsæt: fx ingen kontur / 2px kontur] |
| Filformat | SVG (altid) |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```
assets/illustrations/[navn].svg
```

---

## Billedbeskæring og placering

**Princip** — Beskæring følger et fast sæt aspektforhold og fokuspunkt-regler så billeder aldrig ser tilfældige ud.

**Begrundelse** — Inkonsekvent beskæring giver layoutet et uroligt udtryk, særligt i grid- og kortvisninger.

**Specifikation**

| Format | Aspektforhold | Fokuspunkt |
|---|---|---|
| Hero / banner | 16:9 | Centreret eller øverste tredjedel |
| Kort / thumbnail | 4:3 | Centreret |
| Portræt | 3:4 | Ansigt i øverste tredjedel |
| Kvadratisk | 1:1 | Centreret |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
img {
  object-fit: cover;
  object-position: center;
  aspect-ratio: var(--aspect-ratio-card);
}
```

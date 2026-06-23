# 4. Spacing og layout

## Afstandsskala

**Princip** — Al spacing — margin, padding, gap — hentes fra en fast 8px-baseret skala og aldrig hardkodes.

**Begrundelse** — En baseunit-skala (8px) sikrer visuel rytme og gør det muligt at justere hele layoutet ved at ændre én token.

**Specifikation**

| Trin | Token | Værdi | Typisk anvendelse |
|---|---|---|---|
| 1 | `--space-1` | 4px | Minimal indre afstand |
| 2 | `--space-2` | 8px | Kompakte komponenter |
| 3 | `--space-3` | 12px | Interne komponentafstande |
| 4 | `--space-4` | 16px | Standard padding |
| 5 | `--space-5` | 24px | Sektionsafstand inden for blok |
| 6 | `--space-6` | 32px | Afstand mellem komponenter |
| 7 | `--space-7` | 48px | Sektionsafstand |
| 8 | `--space-8` | 64px | Stor sektionsafstand |
| 9 | `--space-9` | 96px | Side-top og -bund |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--space-1: 0.25rem;
--space-2: 0.5rem;
--space-3: 0.75rem;
--space-4: 1rem;
--space-5: 1.5rem;
--space-6: 2rem;
--space-7: 3rem;
--space-8: 4rem;
--space-9: 6rem;
```

---

## Grid og kolonnelayout

**Princip** — Alle sidelayouts er baseret på et fast kolonnegrid med definerede marginer og gutter.

**Begrundelse** — Et konsekvent grid skaber visuelt sammenhold og gør det muligt for designere og udviklere at arbejde ud fra de samme koordinater.

**Specifikation**

| Egenskab | Mobil | Tablet | Desktop |
|---|---|---|---|
| Kolonner | 4 | 8 | 12 |
| Gutter | 16px | 24px | 32px |
| Ydermarginer | 16px | 32px | 64px |
| Max. indholdsbr. | 100% | 100% | 1280px |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--grid-columns: 12;
--grid-gutter: var(--space-6);
--grid-margin: var(--space-8);
--grid-max-width: 1280px;
```

---

## Breakpoints

**Princip** — Layoutet tilpasses til tre breakpoints som dækker mobiltelefon, tablet og desktop.

**Begrundelse** — Tre veldefinerede breakpoints er tilstrækkeligt for langt de fleste projekter — undgå micro-breakpoints der forøger kompleksiteten.

**Specifikation**

| Navn | Token | Minimumsbredde |
|---|---|---|
| Mobil | `--bp-mobile` | 0px |
| Tablet | `--bp-tablet` | 768px |
| Desktop | `--bp-desktop` | 1024px |
| Bred | `--bp-wide` | 1440px |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--bp-mobile: 0px;
--bp-tablet: 768px;
--bp-desktop: 1024px;
--bp-wide: 1440px;
```

# 2. Farver

## Primærpalette

**Princip** — Primærfarverne er brandets signaturfarver og bruges til alle primære visuelle elementer.

**Begrundelse** — En stram primærpalette skaber øjeblikkelig genkendelse og sikrer konsistens på tværs af alle flader.

**Specifikation**

| Navn | Token | HEX | RGB | Anvendelse |
|---|---|---|---|---|
| Primær | `--color-primary` | `#000000` | `0, 0, 0` | Primær CTA, overskrifter |
| Primær lys | `--color-primary-light` | `#333333` | `51, 51, 51` | Hover-tilstand, sekundære elementer |
| Primær mørk | `--color-primary-dark` | `#000000` | `0, 0, 0` | Aktiv tilstand, høj kontrast |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--color-primary: #000000;
--color-primary-light: #333333;
--color-primary-dark: #000000;
```

---

## Sekundærpalette

**Princip** — Sekundærfarverne supplerer primærpaletten og bruges til støtteelementer og accent.

**Begrundelse** — Et klart hierarki mellem primær- og sekundærfarver forhindrer visuel støj og sikrer at det vigtigste altid træder frem.

**Specifikation**

| Navn | Token | HEX | RGB | Anvendelse |
|---|---|---|---|---|
| Sekundær | `--color-secondary` | `#ffffff` | `255, 255, 255` | Baggrunde, hvide flader |
| Accent | `--color-accent` | `#cccccc` | `204, 204, 204` | Borders, subtile highlights |
| Neutral | `--color-neutral` | `#666666` | `102, 102, 102` | Brødtekst, ikoner |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--color-secondary: #ffffff;
--color-accent: #cccccc;
--color-neutral: #666666;
```

---

## Tilgængelighed og kontrastforhold

**Princip** — Alle tekst-/baggrundskombinatitioner skal overholde WCAG 2.1 AA (kontrastforhold minimum 4,5:1 for normal tekst).

**Begrundelse** — Tilgængelighed er ikke valgfrit — det er et lovkrav i mange jurisdiktioner og udvider brandets rækkevidde.

**Specifikation**

| Kombination | Kontrastforhold | WCAG-niveau |
|---|---|---|
| `--color-primary` på `--color-secondary` | [Indsæt] | AA / AAA |
| `--color-neutral` på `--color-secondary` | [Indsæt] | AA / AAA |
| Hvid tekst på `--color-primary` | [Indsæt] | AA / AAA |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
/* Brug altid tokens — aldrig hardkodede farveværdier */
color: var(--color-primary);
background-color: var(--color-secondary);
```

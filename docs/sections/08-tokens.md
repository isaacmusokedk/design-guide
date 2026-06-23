# 8. Design tokens

## Hvad er design tokens?

**Princip** — Design tokens er den maskinlæsbare kilde til sandhed for alle visuelle beslutninger — farver, typografi, spacing, radius og skygger.

**Begrundelse** — Tokens eliminerer afstanden mellem design og kode: designeren arbejder med det samme navngivne sæt værdier som udvikleren, og en ændring i én kilde slår igennem overalt.

**Specifikation**

| Token-kategori | Eksempel-token | Eksempelværdi |
|---|---|---|
| Farver | `--color-primary` | `#000000` |
| Typografi | `--font-size-md` | `1rem` |
| Spacing | `--space-4` | `1rem` |
| Border radius | `--radius-sm` | `4px` |
| Skygger | `--shadow-md` | `0 4px 12px rgba(0,0,0,0.1)` |
| Transition | `--transition-default` | `150ms ease-in-out` |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
/* Alle tokens samlet i én :root-blok */
:root {
  --color-primary: #000000;
  --font-size-md: 1rem;
  --space-4: 1rem;
  --radius-sm: 4px;
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.1);
  --transition-default: 150ms ease-in-out;
}
```

---

## Token-fil (JSON)

**Princip** — Tokens vedligeholdes i en central JSON-fil der kan konverteres til CSS-variabler, Sass-variabler eller platform-native tokens.

**Begrundelse** — En platform-agnostisk JSON-kilde gør det muligt at synkronisere tokens til iOS, Android og web fra ét sted.

**Specifikation**

| Egenskab | Detalje |
|---|---|
| Filplacering | `docs/assets/tokens.json` |
| Format | W3C Design Tokens Community Group (DTCG) draft |
| Ansvarlig | Designsystemansvarlig / Iris |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

Se [`docs/assets/tokens.json`](../assets/tokens.json) for den maskinlæsbare token-stub. Udfyld filen med brandets faktiske værdier.

```json
{
  "tokens": {}
}
```

---

## Token-navngivningskonvention

**Princip** — Tokens navngives efter mønsteret `--[kategori]-[egenskab]-[variant]`.

**Begrundelse** — Et konsekvent navneskema gør tokens forudsigelige og reducerer fejl ved implementering.

**Specifikation**

| Kategori | Mønster | Eksempel |
|---|---|---|
| Farve | `--color-[navn]-[trin]` | `--color-primary-light` |
| Typografi | `--font-[egenskab]-[trin]` | `--font-size-lg` |
| Spacing | `--space-[trin]` | `--space-4` |
| Radius | `--radius-[størrelse]` | `--radius-md` |
| Skygge | `--shadow-[størrelse]` | `--shadow-lg` |
| Transition | `--transition-[navn]` | `--transition-slow` |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
/* Korrekt brug — altid token-reference, aldrig hardkodet værdi */
border-radius: var(--radius-md);
box-shadow: var(--shadow-lg);
transition: all var(--transition-default);
```

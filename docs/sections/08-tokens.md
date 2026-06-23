# 8. Design tokens

## Hvad er design tokens?

**Princip** — Design tokens er den maskinlæsbare kilde til sandhed for alle ExempelBrands visuelle beslutninger.

**Begrundelse** — Tokens eliminerer afstanden mellem design og kode: den der opdaterer brandets primærfarve ændrer ét sted i `tokens.json` — og ændringen slår automatisk igennem i CSS-variabler, Sass og eventuelle native apps. Uden tokens ender man med hardkodede hex-værdier spredt over hundredevis af filer.

**Specifikation**

| Token-kategori | Antal tokens | Eksempel-token | Eksempelværdi |
|---|---|---|---|
| Farver | 18 | `color.primary` | `#0D2545` |
| Typografi | 15 | `typography.font-heading` | `Playfair Display` |
| Spacing | 6 | `spacing.md` | `16px` |
| Border radius | 5 | `border-radius.md` | `8px` |
| Skygger | 3 | `shadow.md` | `0 4px 12px rgba(13,37,69,0.12)` |
| Transitions | 3 | `transition.default` | `200ms ease-in-out` |

**Visuelt eksempel**

<div style="display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin:16px 0;">
  <div style="padding:16px;background:#0D2545;border-radius:8px;text-align:center;">
    <p style="font-family:Inter,sans-serif;font-size:10px;color:#B08D57;margin:0 0 4px;font-weight:600;">color.primary</p>
    <p style="font-family:'JetBrains Mono',monospace;font-size:12px;color:#F7F5F0;margin:0;">#0D2545</p>
  </div>
  <div style="padding:16px;background:#B08D57;border-radius:8px;text-align:center;">
    <p style="font-family:Inter,sans-serif;font-size:10px;color:#0D2545;margin:0 0 4px;font-weight:600;">color.accent</p>
    <p style="font-family:'JetBrains Mono',monospace;font-size:12px;color:#0D2545;margin:0;">#B08D57</p>
  </div>
  <div style="padding:16px;background:#F7F5F0;border-radius:8px;text-align:center;border:1px solid #D6D3CB;">
    <p style="font-family:Inter,sans-serif;font-size:10px;color:#8A8678;margin:0 0 4px;font-weight:600;">color.secondary</p>
    <p style="font-family:'JetBrains Mono',monospace;font-size:12px;color:#3D3A32;margin:0;">#F7F5F0</p>
  </div>
</div>

**Kode / download**

Se [`docs/assets/tokens.json`](../assets/tokens.json) for den komplette, maskinlæsbare token-fil i Style Dictionary-format.

```json
{
  "color": {
    "primary": { "value": "#0D2545", "comment": "Navy — signaturfarve" },
    "accent":  { "value": "#B08D57", "comment": "Guld — messingmomentet" },
    "secondary": { "value": "#F7F5F0", "comment": "Off-white — baggrund" }
  }
}
```

---

## Token-fil (JSON)

**Princip** — Tokens vedligeholdes i `docs/assets/tokens.json` i Style Dictionary-format og konverteres til CSS-variabler ved build.

**Begrundelse** — Style Dictionary er den mest udbredte open source-standard for design tokens. Det muliggør eksport til CSS custom properties, Sass, iOS (Swift) og Android (XML) fra én kilde.

**Specifikation**

| Egenskab | Detalje |
|---|---|
| Filplacering | `docs/assets/tokens.json` |
| Format | Style Dictionary (kategori > navn > value + comment) |
| Ansvarlig | Designsystemansvarlig / Iris |
| Build-output | CSS custom properties i `:root {}` |
| Versioning | Ændringer logges med commit-besked i form `tokens: [kategori] [hvad ændrede sig]` |

**Visuelt eksempel**

> Token-filen er maskinlæsbar — den er ikke beregnet til direkte visning. Brug CSS-outputtet i :root-blokken herunder til design-preview.

**Kode / download**

```css
/* Auto-genereret fra tokens.json — rediger aldrig dette direkte */
:root {
  /* Farver */
  --color-primary: #0D2545;
  --color-primary-light: #1A3D6B;
  --color-primary-dark: #071525;
  --color-secondary: #F7F5F0;
  --color-accent: #B08D57;
  --color-accent-light: #CEAD78;
  --color-neutral-100: #FFFFFF;
  --color-neutral-200: #EFEFEB;
  --color-neutral-300: #D6D3CB;
  --color-neutral-500: #8A8678;
  --color-neutral-700: #3D3A32;
  --color-neutral-900: #1A1814;
  --color-success: #2D6A4F;
  --color-warning: #B7791F;
  --color-error: #9B2335;
  --color-info: #1A5276;

  /* Typografi */
  --font-family-heading: 'Playfair Display', Georgia, serif;
  --font-family-body: 'Inter', system-ui, sans-serif;
  --font-family-mono: 'JetBrains Mono', monospace;
  --font-size-display: 3.5rem;
  --font-size-h1: 2.5rem;
  --font-size-h2: 2rem;
  --font-size-h3: 1.5rem;
  --font-size-lg: 1.25rem;
  --font-size-md: 1rem;
  --font-size-sm: 0.875rem;
  --font-size-xs: 0.75rem;
  --font-weight-regular: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
  --line-height-tight: 1.2;
  --line-height-heading: 1.35;
  --line-height-body: 1.6;

  /* Spacing */
  --space-xs: 0.25rem;
  --space-sm: 0.5rem;
  --space-md: 1rem;
  --space-lg: 2rem;
  --space-xl: 4rem;
  --space-2xl: 6rem;

  /* Border radius */
  --radius-none: 0px;
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-lg: 16px;
  --radius-full: 9999px;

  /* Skygger */
  --shadow-sm: 0 1px 3px rgba(13, 37, 69, 0.08);
  --shadow-md: 0 4px 12px rgba(13, 37, 69, 0.12);
  --shadow-lg: 0 12px 32px rgba(13, 37, 69, 0.18);

  /* Transitions */
  --transition-fast: 100ms ease-in-out;
  --transition-default: 200ms ease-in-out;
  --transition-slow: 350ms ease-in-out;
}
```

---

## Token-navngivningskonvention

**Princip** — Tokens navngives efter mønsteret `--[kategori]-[egenskab]-[variant]`.

**Begrundelse** — Et konsekvent navneskema gør tokens forudsigelige. En ny udvikler på teamet skal kunne gætte token-navnet uden at slå det op.

**Specifikation**

| Kategori | Mønster | Eksempel |
|---|---|---|
| Farve | `--color-[navn]-[trin]` | `--color-primary`, `--color-neutral-700` |
| Typografi — familie | `--font-family-[rolle]` | `--font-family-heading` |
| Typografi — størrelse | `--font-size-[trin]` | `--font-size-h1`, `--font-size-md` |
| Typografi — vægt | `--font-weight-[navn]` | `--font-weight-bold` |
| Linjehøjde | `--line-height-[kontekst]` | `--line-height-body` |
| Spacing | `--space-[trin]` | `--space-md`, `--space-xl` |
| Radius | `--radius-[størrelse]` | `--radius-md` |
| Skygge | `--shadow-[størrelse]` | `--shadow-lg` |
| Transition | `--transition-[navn]` | `--transition-default` |

**Visuelt eksempel**

> Tokennavnet skal afsløre formålet, ikke værdien. `--color-accent` er bedre end `--color-gold` — farven kan skifte, formålet forbliver.

**Kode / download**

```css
/* Korrekt brug — altid token-reference, aldrig hardkodet værdi */
.card {
  background-color: var(--color-neutral-100);
  border-radius: var(--radius-md);
  box-shadow: var(--shadow-md);
  padding: var(--space-md);
  transition: box-shadow var(--transition-default);
}

.card:hover {
  box-shadow: var(--shadow-lg);
}

/* Forkert — hardkodet værdi */
.card {
  background-color: #FFFFFF;  /* Aldrig */
  border-radius: 8px;         /* Aldrig */
}
```

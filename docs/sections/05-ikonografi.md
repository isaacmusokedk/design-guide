# 5. Ikonografi

## Ikonstil

**Princip** — ExempelBrand bruger udelukkende Lucide-ikonbiblioteket i outline-stil og blander aldrig ikoner fra andre biblioteker.

**Begrundelse** — Lucide er en moderne, vedligeholdt fork af Feather Icons med konsekvent streg, optisk vægt og 24px viewbox. Outline-stilen passer til brandets præcise og rene visuelle karakter — filled-ikoner ville virke tunge ved siden af Playfair Display-overskrifterne.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Bibliotek | Lucide Icons |
| Stil | Outline (2px streg) |
| Standardstørrelse | 24px |
| Stregtykkelse | 2px — aldrig 1px (for let) eller 3px (for tungt) |
| Farve i neutral kontekst | `--color-neutral-700` |
| Farve i accent-kontekst | `--color-accent` |
| Farve på primær (navy) baggrund | `--color-secondary` (off-white) |
| Kilde | `https://lucide.dev` — NPM: `lucide-react` eller `lucide` |

**Visuelt eksempel**

<div style="display:flex;gap:24px;align-items:center;padding:24px;background:#F7F5F0;border-radius:8px;margin:16px 0;">
  <div style="display:flex;flex-direction:column;align-items:center;gap:8px;">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#3D3A32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
    <span style="font-family:Inter,sans-serif;font-size:11px;color:#8A8678;">24px neutral</span>
  </div>
  <div style="display:flex;flex-direction:column;align-items:center;gap:8px;">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#B08D57" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
    <span style="font-family:Inter,sans-serif;font-size:11px;color:#8A8678;">24px accent</span>
  </div>
  <div style="display:flex;flex-direction:column;align-items:center;gap:8px;padding:12px;background:#0D2545;border-radius:8px;">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#F7F5F0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg>
    <span style="font-family:Inter,sans-serif;font-size:11px;color:#8A8678;">24px inverted</span>
  </div>
</div>

**Kode / download**

```css
:root {
  --icon-size-sm: 16px;
  --icon-size-md: 24px;    /* Standard */
  --icon-size-lg: 32px;
  --icon-color: var(--color-neutral-700);
  --icon-color-accent: var(--color-accent);
  --icon-stroke-width: 2;
}
```

---

## Ikonanvendelse

**Princip** — Ikoner understøtter tekst — de erstatter den ikke, medmindre der er tale om universelt kendte symboler med tilhørende aria-label.

**Begrundelse** — ExempelBrands klienter er professionelle i tidspres. Et ikon der kræver fortolkning er en friktion. Ikoner bruges til at vejlede blikket og reducere scanning-tid — ikke som primær kommunikationskanal.

**Specifikation**

| Scenarie | Regel |
|---|---|
| Navigation og menupunkter | Altid med tekstlabel — undtagelse: hamburger-ikon på mobil |
| CTA-knapper | Understøttende rolle til venstre for tekst — aldrig ikon alene |
| Status-indikator (check, warning, error) | Kan stå alene med `aria-label` — kun universelle symboler |
| Dekorative ikoner i hero | `aria-hidden="true"`, ingen label nødvendig |
| Ikonknapper i dashboards | Altid `aria-label` + tooltip |

**Visuelt eksempel**

<div style="display:flex;gap:12px;align-items:center;padding:16px;background:#FFFFFF;border-radius:8px;border:1px solid #D6D3CB;margin:16px 0;flex-wrap:wrap;">
  <button style="display:flex;align-items:center;gap:8px;padding:10px 16px;background:#0D2545;color:#F7F5F0;border:none;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;font-weight:600;cursor:pointer;">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#F7F5F0" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path><polyline points="7 10 12 15 17 10"></polyline><line x1="12" y1="15" x2="12" y2="3"></line></svg>
    Download rapport
  </button>
  <button style="display:flex;align-items:center;gap:8px;padding:10px 16px;background:transparent;color:#0D2545;border:2px solid #0D2545;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;font-weight:600;cursor:pointer;">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#0D2545" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
    Kontakt os
  </button>
</div>

**Kode / download**

```html
<!-- Funktionelt ikon i knap (kræver synlig label) -->
<button>
  <svg aria-hidden="true" width="16" height="16">...</svg>
  Download rapport
</button>

<!-- Ikonknap uden synlig label (kræver aria-label) -->
<button aria-label="Luk dialog">
  <svg aria-hidden="true">...</svg>
</button>

<!-- Dekorativt ikon -->
<svg aria-hidden="true">...</svg>
```

---

## Brugerdefinerede ikoner

**Princip** — Brugerdefinerede ikoner skal visuelt matche Lucide-bibliotekets outline-stil før de godkendes til brug.

**Begrundelse** — Et custom ikon der afviger fra Lucides visuelle grammatik skaber optisk dissonans, særligt i komponent-tætte layouts som dashboards og rapporter.

**Specifikation**

| Krav | Detalje |
|---|---|
| Viewbox | 24×24 |
| Stregtykkelse | 2px — identisk med Lucide-standard |
| Hjørner | `round` linecap og linejoin — matcher Lucide |
| Filformat | SVG med `currentColor` som stroke-farve |
| Navngivning | `icon-[beskrivende-navn].svg` — fx `icon-rapport-analyse.svg` |
| Godkendelsesproces | Fremvises ved siden af nærmeste Lucide-ikon til visuel sammenligning |

**Visuelt eksempel**

> Custom ikoner vises altid side om side med et Lucide-referenceikon under review-processen.

**Kode / download**

```svg
<!-- Skabelon for custom ikon — brug currentColor for token-kompatibilitet -->
<svg xmlns="http://www.w3.org/2000/svg"
     width="24" height="24" viewBox="0 0 24 24"
     fill="none"
     stroke="currentColor"
     stroke-width="2"
     stroke-linecap="round"
     stroke-linejoin="round">
  <!-- Ikon-path her -->
</svg>
```

Placering: `assets/icons/icon-[navn].svg`

---

## Anbefalede ikonbiblioteker

**Princip** — Lucide er ExempelBrands primære ikonbibliotek. Tabellen nedenfor dokumenterer verificerede MIT-licenserede alternativer til projekter der stiller krav Lucide ikke dækker, samt betingelserne for deres brug.

**Begrundelse** — MIT-licensen er det eneste licensformat der tillader ubegrænset kommerciel brug, redistribution og pakkering i komponentbiblioteker uden attribution-krav. Alle fire primærkilder nedenfor lever op til dette. Kilder med proprietære gratislicenser er noteret separat med deres begrænsninger.

**Primærkilder — MIT-licens**

| Bibliotek | URL | Licens | Antal ikoner | Hvornår vælges det |
|---|---|---|---|---|
| Tabler Icons | tabler.io/icons | MIT | 6.000+ | Standardvalg — bred dækning, outline-stil, npm-pakke, Figma-plugin |
| Phosphor Icons | phosphoricons.com | MIT | 9.000+ | Kræves multi-vægt: thin / light / regular / bold / fill / duotone i samme bibliotek |
| Iconoir | iconoir.com | MIT | 1.600+ | Projekter der kræver streng geometrisk outline og Figma-plugin |
| Heroicons | heroicons.com | MIT | ~300 | Tailwind-baserede projekter med minimal ikondækning — konsistens prioriteres over bredde |

**Praktisk standardregel**

> Vælg Tabler Icons som standard. Brug Phosphor Icons hvis guiden kræver multi-vægt-ikoner (fx et ikon der optræder i både thin og bold i samme komponent).

Skift bibliotek kræver godkendelse i design-systemet — bland aldrig to MIT-biblioteker i samme produkt uden dokumenteret begrundelse.

**UXWing — betinget brug**

UXWing (`uxwing.com`) har en proprietær gratislicens: kommerciel brug og ingen attribution kræves, men redistribution er forbudt. Det betyder at ikoner fra UXWing ikke må pakkes i et komponentbibliotek og distribueres videre. Brug er tilladt i design og statiske leverancer. Kontrollér altid aktuelle licensbetingelser på uxwing.com inden brug.

**Kode / download**

```bash
# Tabler Icons (standard)
npm install @tabler/icons-react

# Phosphor Icons (multi-vægt)
npm install @phosphor-icons/react
```

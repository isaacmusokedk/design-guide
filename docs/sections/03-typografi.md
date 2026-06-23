# 3. Typografi

## Primærskrifttype (overskrifter)

**Princip** — Playfair Display er ExempelBrands display-serif og bruges til alle overskrifter H1–H3.

**Begrundelse** — En velvalgt display-serif signalerer autoritet og karakter uden at virke gammeldags. Playfair Display balancerer klassisk professionalisme med moderne proportioner — den er på niveau med det typografiske sprog fra McKinsey og Harvard Business Review, men er frit tilgængelig via Google Fonts.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Familie | Playfair Display |
| Vægt (H1, H2, display) | 700 (Bold) |
| Vægt (H3, kortitler) | 600 (SemiBold) |
| Kilde | Google Fonts |
| Import-URL | `https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700` |
| Letter-spacing (display) | `-0.02em` — stram ved store størrelser |

**Visuelt eksempel**

<div style="font-family:'Playfair Display',Georgia,serif;padding:24px;background:#F7F5F0;border-radius:8px;margin:16px 0;">
  <div style="font-size:40px;font-weight:700;color:#1A1814;line-height:1.2;margin-bottom:8px;">Strategisk klarhed begynder med de rigtige spørgsmål</div>
  <div style="font-size:24px;font-weight:600;color:#3D3A32;line-height:1.35;margin-bottom:4px;">Underoverskrift i SemiBold</div>
  <div style="font-size:32px;font-weight:700;color:#0D2545;line-height:1.2;border-bottom:3px solid #B08D57;display:inline-block;padding-bottom:4px;">H2 med guld-accent</div>
</div>

**Kode / download**

```css
/* Google Fonts import */
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&display=swap');

:root {
  --font-family-heading: 'Playfair Display', Georgia, 'Times New Roman', serif;
  --font-weight-heading: 700;
  --font-weight-subheading: 600;
  --letter-spacing-display: -0.02em;
}

h1, h2, h3 {
  font-family: var(--font-family-heading);
  letter-spacing: var(--letter-spacing-display);
}
```

---

## Sekundærskrifttype (brødtekst og UI)

**Princip** — Inter er ExempelBrands arbejdshest og bruges til al brødtekst, labels, navigation og UI-elementer.

**Begrundelse** — Inter er designet specifikt til skærmlæsbarhed og fungerer på alle skærmstørrelser og -tætheder. Den humanistiske karakter blødgør kontrasten til Playfair Display og skaber et sammenhængende typografisk par — klassisk serif til display, moderne sans til tekst.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Familie | Inter |
| Standardvægt | 400 (Regular) |
| Fremhævet vægt | 500 (Medium) |
| Knapper og labels | 600 (SemiBold) |
| Kursiv | 400 Italic — bruges kun til citater og fremhævelse, ikke til hele afsnit |
| Linjehøjde (brødtekst) | 1,6 — generøs for læsevenlig tæthed |
| Kilde | Google Fonts |
| Import-URL | `https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600` |

**Visuelt eksempel**

<div style="font-family:Inter,system-ui,sans-serif;padding:24px;background:#FFFFFF;border-radius:8px;border:1px solid #D6D3CB;margin:16px 0;">
  <p style="font-size:16px;font-weight:400;color:#3D3A32;line-height:1.6;margin:0 0 12px;">Brødtekst i Regular 400 — den daglige arbejdshest. Vi skriver klart og direkte, uden unødigt indpakkende sprog. En velformet sætning er et tegn på respekt for læserens tid.</p>
  <p style="font-size:14px;font-weight:500;color:#8A8678;line-height:1.5;margin:0;">Sekundær tekst i Medium 500 — metadata, labels og hjælpetekst.</p>
</div>

**Kode / download**

```css
/* Google Fonts import */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap');

:root {
  --font-family-body: 'Inter', system-ui, -apple-system, sans-serif;
  --font-weight-body: 400;
  --font-weight-medium: 500;
  --font-weight-semibold: 600;
  --line-height-body: 1.6;
}

body {
  font-family: var(--font-family-body);
  font-weight: var(--font-weight-body);
  line-height: var(--line-height-body);
  color: var(--color-neutral-700);
}
```

---

## Typografisk skala

**Princip** — Alle tekststørrelser er defineret i tokens og følger en konsekvent, forholdsmæssig skala.

**Begrundelse** — En fast skala forhindrer de arbitrære størrelsesvalg ("er det 17px eller 18px?") der underminerer visuelt hierarki. Skalaen er baseret på en 1,25-faktor (major third) der giver klare, naturligt opfattede trin.

**Specifikation**

| Trin | Token | Størrelse | Linjehøjde | Skrifttype | Anvendelse |
|---|---|---|---|---|---|
| display | `--font-size-display` | 3.5rem / 56px | 1.15 | Playfair Display Bold | Hero-forsider og konferencebannere |
| h1 | `--font-size-h1` | 2.5rem / 40px | 1.2 | Playfair Display Bold | Sidehovedtitler |
| h2 | `--font-size-h2` | 2rem / 32px | 1.2 | Playfair Display Bold | Sektionsoverskrifter |
| h3 | `--font-size-h3` | 1.5rem / 24px | 1.35 | Playfair Display SemiBold | Underoverskrifter og kortitler |
| lg | `--font-size-lg` | 1.25rem / 20px | 1.5 | Inter Regular | Ingress og fremhævet tekst |
| md | `--font-size-md` | 1rem / 16px | 1.6 | Inter Regular | Standard brødtekst |
| sm | `--font-size-sm` | 0.875rem / 14px | 1.5 | Inter Regular/Medium | Sekundær tekst, metadata |
| xs | `--font-size-xs` | 0.75rem / 12px | 1.4 | Inter Medium | Billedtekster, hjælpetekst, fine print |

**Visuelt eksempel**

<div style="padding:24px;background:#F7F5F0;border-radius:8px;margin:16px 0;">
  <div style="font-family:'Playfair Display',Georgia,serif;font-size:40px;font-weight:700;color:#1A1814;line-height:1.2;margin-bottom:16px;">H1 — Sidehovedtitel</div>
  <div style="font-family:'Playfair Display',Georgia,serif;font-size:32px;font-weight:700;color:#1A1814;line-height:1.2;margin-bottom:16px;">H2 — Sektionsoverskrift</div>
  <div style="font-family:'Playfair Display',Georgia,serif;font-size:24px;font-weight:600;color:#3D3A32;line-height:1.35;margin-bottom:16px;">H3 — Underoverskrift</div>
  <div style="font-family:Inter,sans-serif;font-size:20px;font-weight:400;color:#3D3A32;line-height:1.5;margin-bottom:12px;">Ingress — Den første sætning der sætter rammen.</div>
  <div style="font-family:Inter,sans-serif;font-size:16px;font-weight:400;color:#3D3A32;line-height:1.6;margin-bottom:8px;">Brødtekst — Klar og præcis. Vi skriver kortere sætninger end vi tror er nødvendigt.</div>
  <div style="font-family:Inter,sans-serif;font-size:12px;font-weight:500;color:#8A8678;line-height:1.4;">Billedtekst — Kontekst og kildeangivelse.</div>
</div>

**Kode / download**

```css
:root {
  --font-size-display: 3.5rem;   /* 56px — hero */
  --font-size-h1: 2.5rem;        /* 40px — sideoverskrifter */
  --font-size-h2: 2rem;          /* 32px — sektioner */
  --font-size-h3: 1.5rem;        /* 24px — underoverskrifter */
  --font-size-lg: 1.25rem;       /* 20px — ingress */
  --font-size-md: 1rem;          /* 16px — brødtekst */
  --font-size-sm: 0.875rem;      /* 14px — sekundær */
  --font-size-xs: 0.75rem;       /* 12px — billedtekst */
}
```

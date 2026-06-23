# 1. Logo

## Primærlogo

**Princip** — Primærlogoet er den eneste autoriserede version til alle primære eksponeringer.

**Begrundelse** — ExempelBrand er en konsulentvirksomhed der sælger tillid. Konsekvent brug af ét primærlogo er den mindste og billigste investering i brandtillid.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Format | SVG (primært), PNG med transparent baggrund (fallback) |
| Minimum bredde | 120px (digital) / 30mm (print) |
| Clearzone | 1× logoets højde på alle fire sider |
| Skrifttype i logo | Playfair Display Bold — samme som heading-token |
| Primær farveversion | Navy (`#0D2545`) på off-white (`#F7F5F0`) |
| Inverteret version | Off-white (`#F7F5F0`) på navy (`#0D2545`) — til mørke baggrunde |
| Accent-version | Navy med guld-understregning (`#B08D57`) — til premium-kontekster |

**Visuelt eksempel**

<div style="display:flex;gap:24px;align-items:center;padding:24px;background:#F7F5F0;border-radius:8px;margin:16px 0;">
  <div style="font-family:'Playfair Display',Georgia,serif;font-size:28px;font-weight:700;color:#0D2545;letter-spacing:-0.5px;">
    ExempelBrand
  </div>
  <div style="width:2px;height:32px;background:#D6D3CB;"></div>
  <div style="font-family:'Inter',sans-serif;font-size:11px;font-weight:500;color:#8A8678;letter-spacing:2px;text-transform:uppercase;">
    Strategisk rådgivning
  </div>
</div>

<div style="display:flex;gap:24px;align-items:center;padding:24px;background:#0D2545;border-radius:8px;margin:16px 0;">
  <div style="font-family:'Playfair Display',Georgia,serif;font-size:28px;font-weight:700;color:#F7F5F0;letter-spacing:-0.5px;">
    ExempelBrand
  </div>
  <div style="width:2px;height:32px;background:#1A3D6B;"></div>
  <div style="font-family:'Inter',sans-serif;font-size:11px;font-weight:500;color:#B08D57;letter-spacing:2px;text-transform:uppercase;">
    Strategisk rådgivning
  </div>
</div>

**Download**

```
assets/logo/logo-primary.svg          — Navy på transparent
assets/logo/logo-inverted.svg         — Off-white på transparent
assets/logo/logo-accent.svg           — Navy + guld-understregning
assets/logo/logo-monogram.svg         — "EB" monogram til favicon og app-ikon
```

---

## Logoversioner

**Princip** — Anvend altid den logoversion der passer til konteksten — aldrig en frihåndsmodificeret udgave.

**Begrundelse** — ExempelBrand optræder på formater fra visitkort til konferencebannere. En version-matrix forhindrer ad hoc-improvisation der underminerer brandets professionalisme.

**Specifikation**

| Version | Anvendelse | Minimum |
|---|---|---|
| Horisontal (navn + tagline) | Standard — header, print, præsentationer | 120px |
| Horisontal (kun navn) | Kompakte headers, e-mail-signatur | 100px |
| Monogram "EB" | Favicon, profilbillede, app-ikon, under minimumsstørrelse | 32px |

**Visuelt eksempel**

<div style="display:inline-flex;align-items:center;justify-content:center;width:48px;height:48px;background:#0D2545;border-radius:8px;font-family:'Playfair Display',Georgia,serif;font-size:18px;font-weight:700;color:#F7F5F0;letter-spacing:-0.5px;">
  EB
</div>

**Kode / download**

```css
/* Logo-token — referér altid til den officielle fil, aldrig til en kopi */
--logo-primary: url('/assets/logo/logo-primary.svg');
--logo-inverted: url('/assets/logo/logo-inverted.svg');
--logo-monogram: url('/assets/logo/logo-monogram.svg');
```

---

## Brug og misbrug

**Princip** — Definer eksplicit hvad der er forbudt, ikke blot hvad der er tilladt.

**Begrundelse** — For en konsulentvirksomhed er logoets integritet et direkte signal om arbejdskvaliteten. Logomodifikationer sender forkert signal.

**Specifikation**

| Forbudt | Forklaring |
|---|---|
| Stræk eller skæv skalering | Forstyrrer proportioner og signalerer sjusk |
| Brug af andre farver end de tre autoriserede versioner | Underminerer det farvede brandsprog |
| Placering på fotografiske baggrunde uden overlay | Reducerer kontrast og læsbarhed |
| Tilføjelse af drop shadow, glow eller andre effekter | Ikke en del af den autoriserede identitet |
| Brug af logoet under minimumsstørrelse | Playfair Display-bogstaverne kollapser og bliver ulæselige |
| Brug af alternative skrifttyper i logoet | Logoets typografi er låst til Playfair Display Bold |

**Visuelt eksempel**

> Logoet må aldrig placeres direkte på et fotografi uden semi-transparent navy-overlay (`rgba(13, 37, 69, 0.72)`).

**Kode / download**

```
Ingen kode — se downloadmappen for autoriserede filer.
Alle requests om logomodifikationer rutes til brandansvarlig.
```

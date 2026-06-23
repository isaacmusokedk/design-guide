# 1. Logo

## Primærlogo

**Princip** — Primærlogoet er den eneste autoriserede version til alle primære eksponeringer.

**Begrundelse** — Konsekvent brug af ét primærlogo sikrer genkendelse og forhindrer visuel fragmentering på tværs af kanaler.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Format | SVG (primært), PNG (fallback) |
| Minimum bredde | 80px (digital) / 20mm (print) |
| Clearzone | 1x logoets højde på alle sider |
| Baggrundsvarianter | Lys baggrund / mørk baggrund / ensfarvet |

**Visuelt eksempel**

> Indsæt eksempel her

**Download**

```
assets/logo/logo-primary.svg
assets/logo/logo-primary-dark.svg
assets/logo/logo-primary-white.svg
```

---

## Logoversioner

**Princip** — Anvend altid den logoversion der passer til konteksten — aldrig en frihåndsmodificeret udgave.

**Begrundelse** — Uautoriserede modifikationer (stræk, rotation, farveskift) underminerer brandets troværdighed.

**Specifikation**

| Version | Anvendelse |
|---|---|
| Horisontal | Standard — til brug i header, print og de fleste digitale flader |
| Lodret / stacked | Til kvadratiske formater (profilbillede, favicon, app-ikon) |
| Ikon/monogram | Til meget lille gengivelse under minimumsstørrelse |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
/* Logo-token — referér altid til den officielle fil, aldrig til en kopi */
--logo-primary: url('/assets/logo/logo-primary.svg');
```

---

## Brug og misbrug

**Princip** — Definer eksplicit hvad der er forbudt, ikke blot hvad der er tilladt.

**Begrundelse** — Uklarhed om misbrug er den hyppigste årsag til inkonsekvent logobehandling.

**Specifikation**

| Forbudt | Forklaring |
|---|---|
| Stræk eller skæv skalering | Forstyrrer proportioner |
| Ændring af logofarver | Svækker brandgenkendelse |
| Placering på støjende baggrund | Reducerer læsbarhed |
| Tilføjelse af skygge eller effekter | Ikke en del af den autoriserede identitet |
| Brug under minimumsstørrelse | Skrift og elementer bliver ulæselige |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```
Ingen kode — se downloadmappen for autoriserede filer.
```

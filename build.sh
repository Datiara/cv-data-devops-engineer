#!/usr/bin/env bash
# Génère tous les PDF des CV depuis les sources HTML (weasyprint + style.css).
# Les PDF sont datés du jour, à la manière des archives existantes :
#   CV_Nathalie_AVRIL_<variante>_AAAA-MM-JJ.pdf
# Usage : ./build.sh [nom_de_fichier.html ...]   (sans argument = tous les CV)
set -euo pipefail
cd "$(dirname "$0")"

DATE="$(date +%F)"   # AAAA-MM-JJ

# Source de vérité = les .html. Mapping HTML -> nom du PDF daté.
declare -A OUT=(
  [CV.html]="CV_Nathalie_AVRIL_${DATE}.pdf"                              # privé (non tracké)
  [CV_public.html]="CV_Nathalie_AVRIL_${DATE}_public.pdf"               # public 1 page
  [CV_ats.html]="CV_Nathalie_AVRIL_ats_${DATE}.pdf"                     # version ATS
  [CV_data_aws.html]="CV_Nathalie_AVRIL_data_aws_${DATE}.pdf"          # ciblé Data & Cloud AWS
  [CV_data_integration.html]="CV_Nathalie_AVRIL_data_integration_${DATE}.pdf"  # ciblé intégration / ETL
  [CV_devops_sre.html]="CV_Nathalie_AVRIL_devops_sre_${DATE}.pdf"      # ciblé DevOps / SRE
)

# Si des fichiers sont passés en argument, on ne génère que ceux-là.
if [ "$#" -gt 0 ]; then
  FILES=("$@")
else
  FILES=("${!OUT[@]}")
fi

for html in "${FILES[@]}"; do
  [ -f "$html" ] || { echo "⏭  $html absent, ignoré"; continue; }
  pdf="${OUT[$html]:-${html%.html}_${DATE}.pdf}"
  echo "→ $html → $pdf"
  weasyprint "$html" "$pdf"
done

# PDF public au nom canonique (tracké dans Git, référence stable sans date).
if [ -f CV_public.html ]; then
  echo "→ CV_public.html → CV_Nathalie_AVRIL_public.pdf (référence)"
  weasyprint CV_public.html CV_Nathalie_AVRIL_public.pdf
fi

# Lettres de motivation locales (LM_*.html → PDF daté), uniquement en build complet.
if [ "$#" -eq 0 ]; then
  for lm in LM_*.html; do
    [ -e "$lm" ] || continue   # pas de fichier LM présent
    out="${lm%.html}_${DATE}.pdf"
    echo "→ $lm → $out"
    weasyprint "$lm" "$out"
  done
fi

echo "✓ PDF générés (${DATE})."

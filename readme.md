# etf.nu
ETF website

## new versions
Currently, whenever a new version is to be released, delete the public folder from your pc, run pnpm build, start python http server, check localhost so it looks good and works then upload to git. on server pull latest and restart nginx.

Later on the building of the public should be moved to some worker or github action or whatever

## How to handle assets
If anything is needed from old wordpress site, it goes under static/wp-content/uploads/XXXX-XX. Whatever was the original url
For new content, place it in assets/YYYY-MM/image.ext
use fpimg shortcode so that a fingerprint is applied to the image. 
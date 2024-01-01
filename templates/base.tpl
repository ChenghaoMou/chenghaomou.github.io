<!DOCTYPE HTML>

<!-- DoNotFormat -->
<bind tag="ema-lang"><ema:metadata><value var="page.lang" /></ema:metadata></bind>
<!-- DoNotFormat -->

<html lang="${ema-lang}">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>
    <ema:titleFull />
  </title>
  <ema:metadata>
    <snippet var="page.headHtml" />
    <with var="page">
      <meta property="og:description" content="${value:description}" />
      <meta property="og:site_name" content="${value:siteTitle}" />
      <meta property="og:image" content="${value:image}" />
      <meta property="og:type" content="website" />
      <meta property="og:title" content="${ema:title}" />
    </with>
    <with var="template">
      <base href="${value:baseUrl}" />
      <link href="${value:iconUrl}" rel="icon" />
    </with>
    
  </ema:metadata>
  <emaNoteFeedUrl />
  <tailwindCssShim />

  <style>
    /* Heist error element */
    strong.error {
      color: lightcoral;
      font-size: 90%;
      font-family: monospace;
    }

    /* Callouts */
    div.callout {
      background-color: #f5f5f5;
      padding: 1em 1em 0.5em;
      border-radius: 0.5em;
      margin-bottom: 1em;
    }

    .callout[data-callout="note"] {
      --callout-color: 8, 109, 221;
    }

    .callout[data-callout="info"] {
      --callout-color: 8, 109, 221;
    }

    .callout[data-callout="tip"] {
      --callout-color: 8, 191, 188;
    }

    .callout[data-callout="warning"] {
      --callout-color: 236, 117, 0;
    }

    .callout[data-callout="failure"] {
      --callout-color: 233, 49, 71;
    }

    div.callout {
      background-color: rgba(var(--callout-color), 0.1);
    }

    .callout .callout-title {
      color: rgb(var(--callout-color));
    }

    div.callout-title {
      display: flex;
      align-items: center;
      margin-bottom: 0.5em;
      font-variation-settings: 'wght' 600;
    }

    div.callout-title div.callout-title-inner {
      margin-left: 0.5em;
    }

    /* External link icon */
    a[data-linkicon=""]::after {
      content: ""
    }

    a[data-linkicon=none]::after {
      content: ""
    }

    a[data-linkicon="external"] {
      /* inspired by https://stephango.com */
      background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke-width='2.5' stroke='gray' class='w-6 h-6'%3E%3Cpath stroke-linecap='round' stroke-linejoin='round' d='M4.5 19.5l15-15m0 0H8.25m11.25 0v11.25' /%3E%3C/svg%3E%0A");
      background-position: right 33%;
      background-repeat: no-repeat;
      background-size: 0.7em;
      padding-right: 0.75em;
    }

    a[data-linkicon="external"][href^="mailto:"]::after {
      content: url('data:image/svg+xml,\
        <svg \
          xmlns="http://www.w3.org/2000/svg" \
          height="0.7em" \
          fill="none" \
          viewBox="0 0 24 24" \
          stroke="gray" \
          stroke-width="2"> \
          <path \
            stroke-linecap="round" \
            stroke-linejoin="round" \
            d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" /> \
        </svg>');
    }
  </style>
  <apply template="/templates/hooks/more-head" />

  <head-main />
  <apply template="components/stork/stork-search-head" />
</head>

<!-- DoNotFormat -->
<bind tag="theme"><ema:metadata><value var="template.theme" /></ema:metadata></bind>
<bind tag="iconSize">w-4 h-4 flex-shrink-0</bind>
<bind tag="bodyClass"><ema:metadata><value var="template.base.bodyClass" /></ema:metadata></bind>
<!-- DoNotFormat -->

<body class="${bodyClass}">
  <body-main />
  <apply template="components/stork/stork-search" />
  <ema:metadata>
    <snippet var="page.bodyHtml" />
  </ema:metadata>
</body>

</html>
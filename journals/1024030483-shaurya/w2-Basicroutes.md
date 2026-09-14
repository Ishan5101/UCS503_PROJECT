### Backend Developer

## Objective

The objective of the backend development was to establish
the initial API layer for retrieving cryptocurrency market information
for the LedgerX application.

## Work Done

- Implemented the cryptocurrency API endpoint.
- Integrated the CoinMarketCap API for retrieving cryptocurrency market data.
- Configured server-side API key handling.
- Added error handling for failed external API requests.
- Added fallback data so that the frontend can continue to display
  cryptocurrency information when the external API is unavailable.
- Added response revalidation to reduce unnecessary requests to the
  external cryptocurrency API.

## Files Added/Modified

```text
src/
└── app/
    └── api/
        └── crypto/
            └── route.ts
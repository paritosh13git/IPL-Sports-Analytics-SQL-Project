# Power BI Data Model (IPL Analytics)

## Tables:
### 1. Matches
- Match-level data
- Primary key: **id**

### 2. Deliveries_v03
- Every ball with venue + date
- Primary key: (id, inning, over, ball)
- Foreign key: id → Matches.id

## Relationships:
- Matches[ID] 1 —— ∞ Deliveries_v03[ID]

---

# Measures Needed:
- Total Runs
- Total Wickets
- Boundaries
- Dot Balls
- Runs by Venue
- Runs by Team
- Yearly performance

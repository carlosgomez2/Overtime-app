## Overtime App

Key requirement: company needs documentation that salaried employees did or did not get overtime each week.

## Models
- [x] Post -> date:date rationale:text
- [x] User -> Devise
- [x] AdminUser -> STI

## Features:
- [] Approval Workflow
- [] SMS Sending -> link to approval or overtime input
- [] Administrative admin dashboard
- [] Block non admin and guest users
- [] Email summary to managers for approval
- [] Needs to be documented if employee did not log overtime

## UI:
- [x] Bootstrap -> formatting
- [] Font Awesome Icons
- [x] Update styles for forms

## TODO:
- [x] Add full_name methods for users
- [] Refactor user association integration test in post_spec
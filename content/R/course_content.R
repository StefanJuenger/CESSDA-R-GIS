course_content <-
  tibble::tribble(
    ~Time, ~Title,
    "09:00-09:30", "Introduction: Data Management & Geospatial Data",
    "09:30-09:35", "Exercise 1: R Warm up",
    "09:35-10:00", "Data Processing & Spatial Linking",
    "10:00-10:30", "Exercise 2: Geospatial Data Wrangling",
    "10:30-10:45", "Break",
    "10:45-11:15", "Easy Maps",
    "11:15-11:45", "Excercise 3: Build your own map",
    "11:45-12:00", "Closing, Q & A"
  ) %>% 
  knitr::kable() %>% 
  kableExtra::kable_styling()

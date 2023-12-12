# data preparation for measurement modeling
library(tidyverse)

# manually change this to the box path on your computer if using Windows
box_path <- "~/Library/CloudStorage/Box-Box/Dads Matter Project"

# load data
dat <- openxlsx::read.xlsx(
  file.path(box_path, "Data cleaning/cleaned/Final_Wide_DM_File.xlsx"))

# select relevant items
dat_s <- dat |> 
  select(
    
    # ---- 1. MOTHER AND FATHER INVOLVEMENT WITH INFANT ---- 
    
    # Father's involvement with children (reported by mothers)
    matches("^mfi\\d+\\.1_\\d+$"),
    
    # Mother's involvement with children (reported by mothers)
    matches("^mfi\\d+a\\.1_\\d+$"),   
    
    # Mother's involvement with children (reported by fathers)
    matches("^mfi\\d+\\.2_\\d+$"),
    
    # Mother's involvement with children (reported by fathers)
    matches("^mfi\\d+a\\.2_\\d+$"),  
  
    # ---- 2. PARENT-CHILD CONFLICT TACTICS SCALES ----
    
    # Mother's self-report child abuse
    matches("^pccts\\d+\\.1_\\d+$"), 
    
    # Father's self-report child abuse
    matches("^pccts\\d+\\.2_\\d+$"),
    
    # ---- 3. CHILD NEGLECT ----
    
    # Mother's self-report child neglect
    matches("^neg\\d+\\.1_\\d+$"),
    
    # Father's self-report child neglect
    matches("^neg\\d+\\.2_\\d+$"),
    
    # ---- 4. DEPRESSION: CIDI-SF ----
    
    # Mother's self-report depression
    matches("^cidi\\d+a?\\.1_\\d+$"), 
    
    # Father's self-report depression
    matches("^cidi\\d+a?\\.2_\\d+$"), 
    
    # ---- 5. PARENTING ALLIANCE INVENTORY ----
    
    # Mother's self-report parenting alliance with father
    matches("^pai\\d+\\.1_\\d+$"), 
    
    # Father's self-report parenting alliance with mother
    matches("^pai\\d+\\.2_\\d+$"),
    
    # ---- 6. RELATIONSHIP QUALITY ----
    
    # Mother's report on how father behaves to her
    matches("^rq\\d+\\.1_\\d+$"), 
    
    # Father's report on how mother behaves to him
    matches("^rq\\d+\\.2_\\d+$"),
    
    # ---- 7. CONFLICT TACTICS SCALE ----
    
    # Mother's report on conflict tactics between parents
    matches("^cts\\d+\\.1_\\d+$"), 
    
    # Father's report on conflict tactics between parents
    matches("^cts\\d+\\.2_\\d+$"),
    
    # ---- 8. Ages & Stages Questionnaires ----
    matches("overall_z_\\d+$"),
    
    # ---- 9. ADEX ----
    matches("\\d+_day$"),
    matches("\\d+_night$")
  ) |> 
  rename_with(.fn = function(x){gsub("(\\d+)_day", "day_\\1", x)}) |> 
  rename_with(.fn = function(x){gsub("(\\d+)_night", "night_\\1", x)}) |> 
  # reorder variables by wave
  select(
    matches("_1$"),
    matches("_2$")
  )

# rename CIDI to lower
names(dat_s) <- tolower(names(dat_s))

# export data
write_csv(dat_s, 
          file.path(box_path, "Data analysis/data/dads_matter_fa.csv"))


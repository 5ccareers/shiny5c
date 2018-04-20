## read data from disk
data.all <- readRDS("data_mrg.rda")

## define global variables
i.list <- list(
    "Financial Success" = "FinSucc_Imp",
    "Entrepreneurship" = "Entrepren_Imp",
    "Positive Work Relationships" = "PosWorkRel_Imp",
    "Positive Impact" = "PosImpact_Imp",
    "Learning and Development" = "LearnDev_Imp",
    "Work-Life Balance" = "WLB_Imp",
    "Financial Security" = "FinSecurity_Imp")

a.list <- list(
    "Financial Success" = "FinSucc_Ach",
    "Entrepreneurship" = "Entrepren_Ach",
    "Positive Work Relationships" = "PosWorkRel_Imp",
    "Positive Impact" = "PosImpact_Imp",
    "Learning and Development" = "LearnDev_Imp",
    "Work-Life Balance" = "WLB_Imp",
    "Financial Security" = "FinSecurity_Imp")

gap.list <- list(
    "Financial Success" = "FinSucc_Gap",
    "Entrepreneurship" = "Entrepren_Gap",
    "Positive Work Relationships" = "PosWorkRel_Gap",
    "Positive Impact" = "PosImpact_Gap",
    "Learning and Development" = "LearnDev_Gap",
    "Work-Life Balance" = "WLB_Gap",
    "Financial Security" = "FinSecurity_Gap")

ind.list <- list(
    "Overall Career Success" = "CarSuccess",
    "No. of Occupations" = "NumOccupations",
    "No. of Employers" = "NumEmployers",
    "No. of Promotions" = "NumPromotions",
    "Career Aspirations" = "CarAspirations",
    "Turnover Intention" = "TurnoverIntent",
    "Supervisor Support" = "SupervisorSupp",
    "Affective Commitment" = "AffectiveCommit",
    "Employability" = "Employability",
    "Employee development" = "EmployeeDev",
    "Life Satisfaction" = "LifeSatisfaction",
    "Health" = "Health"
)

cnt.list <- list(
    "GDP" = "GDP",
    "Global Competitiveness Score" =  "GlobalCompet",
    "Gini Coefficient" =  "Gini",
    "Poverty rate" = "PovertyRate",
    "Education/Skills" = "EduSkillsScore",
    "IHDI" = "IHDI"
)

all.list <- list(i.list, a.list, gap.list, ind.list, cnt.list)

## read data info table from disk
info.tab <- readRDS("info_tab.rda")

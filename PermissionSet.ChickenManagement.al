permissionset 50100 ChickenManagement
{
    Assignable = true;
    Caption = 'ChickenManagement', MaxLength = 30;
    Permissions =
        table Chicken = X,
        tabledata Chicken = RMID,
        table "Chicken Type" = X,
        tabledata "Chicken Type" = RMID,
        table "Egg Production Header" = X,
        tabledata "Egg Production Header" = RMID,
        table "Egg Production Line" = X,
        tabledata "Egg Production Line" = RMID,
        table "Egg Type" = X,
        tabledata "Egg Type" = RMID,
        codeunit Installation = X,
        codeunit Armstrong = X,
        page ArmstrongPagina = X,
        page "Chicken Card" = X,
        page "Chicken List" = X,
        page "Chicken Types" = X,
        page "Egg Production Document" = X,
        page "Egg Production Line List" = X,
        page "Egg Production List" = X,
        page "Egg Production Subpage" = X,
        page "Egg Types" = X,
        page "Chicken Management Rolecenter" = X;
}

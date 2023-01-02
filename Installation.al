codeunit 50101 Installation
{
    Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes();
    end;

    // trigger OnInstallAppPerDatabase()
    // begin
    //     InsertDefaultChickenTypes();
    // end;

    local procedure InsertDefaultChickenTypes()
    var
        ChickenType: Record "Chicken Type";
    begin
        if ChickenType.IsEmpty() then begin
            InsertChickenType('ChickenType001', 'ChickenType001');
            InsertChickenType('ChickenType002', 'ChickenType002');
            InsertChickenType('ChickenType003', 'ChickenType003');
        end;

    end;

    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[50])
    var
        ChickenType: Record "Chicken Type";

    begin
        Clear(ChickenType);
        ChickenType.Code := ChickenTypeCode;
        ChickenType.Description := ChickenTypeDescription;
        ChickenType.Insert();
    end;
}
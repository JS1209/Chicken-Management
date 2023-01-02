page 50101 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Chicken;
    CardPageId = "Chicken Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'ID number of the chicken';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Code of the type of chicken';
                }
                field("Number of Eggs Produced"; Rec."Number of Eggs Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Mumber of Eggs Produced';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}